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
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-32(s0)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	lw	a5,0(a5)
	mv	a0,a5
	call	__floatsidf
	mv	a4,a0
	mv	a5,a1
	lui	a3,%hi(.LC0)
	lw	a2,%lo(.LC0)(a3)
	lw	a3,%lo(.LC0+4)(a3)
	mv	a0,a4
	mv	a1,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-36(s0)
	sw	a4,0(a3)
	sw	a5,4(a3)
	nop
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	Func, .-Func
	.section	.rodata
	.align	2
.LC1:
	.string	"s=%d, a=%lf"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sw	ra,44(sp)
	sw	s0,40(sp)
	addi	s0,sp,48
	li	a5,80
	sw	a5,-20(s0)
	li	a5,80
	sw	a5,-24(s0)
	li	a5,95
	sw	a5,-28(s0)
	sw	zero,-32(s0)
	li	a4,0
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	addi	a4,s0,-40
	addi	a5,s0,-32
	mv	a3,a5
	lw	a2,-28(s0)
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	Func
	lw	a1,-32(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a3,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,1
	mv	a0,a5
	lw	ra,44(sp)
	lw	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1074266112
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
