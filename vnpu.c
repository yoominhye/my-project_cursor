#include "qemu/osdep.h"
#include "hw/pci/pci.h"
#include "qemu/log.h"
#include "qemu/module.h"
#include "qemu/main-loop.h" /* qemu_get_aio_context() 쓰려면 필수! */
#include "vnpu.h"
#include "trace.h"

#ifndef PCI_VENDOR_ID_QCOM
#define PCI_VENDOR_ID_QCOM 0x5143
#endif

static uint64_t vnpu_mmio_read(void *opaque, hwaddr addr, unsigned size) {
    VNPUPciDevice *s = opaque;
    uint32_t val = 0;
    
    if ((addr/4) < VNPU_REG_COUNT) {
        val = s->regs[addr / 4];
        trace_vnpu_mmio_read(addr, size, val);
    }
    else if (addr == 0x1000) {
        val = s->doorbell;
    }
    trace_vnpu_mmio_read(addr, size, val);
    return val;
}

static void vnpu_mmio_write(void *opaque, hwaddr addr, uint64_t val, unsigned size) {
    VNPUPciDevice *s = opaque;
    trace_vnpu_mmio_write(addr, size,val);
    
    if (addr == 0x1000) {
        s->doorbell = val;
        trace_vnpu_doorbell_triggered(val);
        qemu_bh_schedule(s->cmd_bh);
        return;
    }
    if((addr/4) < VNPU_REG_COUNT){
        s->regs[addr/4] = val;
    } else {
        qemu_log_mask(LOG_GUEST_ERROR,
                        "vNPU: Out-of-bount write attempt at offset 0x%" HWADDR_PRIx "\n", addr);        
    }    
}

static const MemoryRegionOps vnpu_mmio_ops = {
    .read = vnpu_mmio_read,
    .write = vnpu_mmio_write,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static void vnpu_cmd_handler(void *opaque) {
    VNPUPciDevice *s = opaque;
    (void)s; 
    trace_vnpu_cmd_handler("Command dispatched to host NPU");
}

static void vnpu_realize(PCIDevice *pci_dev, Error **errp) {
    VNPUPciDevice *s = VNPU(pci_dev);
    
    memory_region_init_io(&s->mmio_bar, OBJECT(s), &vnpu_mmio_ops, s,
                          "vnpu-mmio", VNPU_BAR0_SIZE);
    pci_register_bar(pci_dev, 0, PCI_BASE_ADDRESS_SPACE_MEMORY, 
                     &s->mmio_bar);
    pci_set_word(pci_dev->config + PCI_COMMAND,
                        PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
    
    s->cmd_bh = aio_bh_new(qemu_get_aio_context(), 
                           vnpu_cmd_handler, s);
    
    /* 기본 레지스터 초기화 */
    memset(s->regs, 0, sizeof(s->regs));
    s->regs[0] = 0x564e5055;  // "VNPU" 매직 넘버
    s->regs[1] = 1;           // 버전
    
    trace_vnpu_realize("vNPU device initialized");
}
static void vnpu_unrealize(PCIDevice *pci_dev){
    VNPUPciDevice *s = VNPU(pci_dev);
    qemu_bh_delete(s->cmd_bh);
    //s->cmd_bh = NULL;
}

static void vnpu_class_init(ObjectClass *klass, void *data) {
    DeviceClass *dc = DEVICE_CLASS(klass);
    PCIDeviceClass *k = PCI_DEVICE_CLASS(klass);
    
    k->realize = vnpu_realize;
    k->exit = vnpu_unrealize;
    k->vendor_id = PCI_VENDOR_ID_QCOM;
    k->device_id = 0x1200;  // 가상 A100 NPU ID
    k->revision = 0x01;
    k->class_id = PCI_CLASS_OTHERS;
    
    set_bit(DEVICE_CATEGORY_MISC, dc->categories);
    dc->desc = "Virtual Qualcomm NPU PCI Device";
}

static const TypeInfo vnpu_info = {
    .name          = TYPE_VNPU,
    .parent        = TYPE_PCI_DEVICE,
    .instance_size = sizeof(VNPUPciDevice),
    .class_init    = vnpu_class_init,
    .interfaces   = (InterfaceInfo[]) {
        {   INTERFACE_CONVENTIONAL_PCI_DEVICE},
        {},
    }
};

static void vnpu_register_types(void) {
    type_register_static(&vnpu_info);
}

type_init(vnpu_register_types)