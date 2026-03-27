#ifndef QEMU_VNPU_H
#define QEMU_VNPU_H
//#include "qemu/queue.h"
#include "hw/pci/pci.h"
#include "hw/pci/pci_device.h"

#define TYPE_VNPU "vnpu"
#define VNPU(obj) OBJECT_CHECK(VNPUPciDevice, (obj), TYPE_VNPU)

#define VNPU_BAR0_SIZE 0x10000 
#define VNPU_REG_COUNT 16

typedef struct VNPUPciDevice {
    PCIDevice parent_obj;
    MemoryRegion mmio_bar;
    uint32_t doorbell;
    uint32_t regs[VNPU_REG_COUNT];
    QEMUBH *cmd_bh;
} VNPUPciDevice;
#endif