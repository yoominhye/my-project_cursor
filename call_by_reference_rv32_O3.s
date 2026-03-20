	.file	"call_by_reference.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__floatsidf
	.globl	__divdf3
	.align	1
	.globl	Func
	.type	Func, @function
Func:
	addi	sp,sp,-16
	add	a0,a0,a1
	sw	ra,12(sp)
	sw	s0,8(sp)
	add	a0,a0,a2
	sw	a0,0(a3)
	mv	s0,a4
	call	__floatsidf
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	call	__divdf3
	lw	ra,12(sp)
	sw	a0,0(s0)
	sw	a1,4(s0)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	Func, .-Func
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"s=%d, a=%lf"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	lui	a0,%hi(.LC2)
	addi	sp,sp,-16
	li	a1,255
	addi	a0,a0,%lo(.LC2)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,1
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1074266112
	.align	3
.LC1:
	.word	0
	.word	1079328768
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
