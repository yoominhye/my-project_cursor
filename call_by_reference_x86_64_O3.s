	.file	"call_by_reference.c"
	.text
	.p2align 4
	.globl	Func
	.type	Func, @function
Func:
.LFB23:
	.cfi_startproc
	endbr64
	addl	%esi, %edi
	pxor	%xmm0, %xmm0
	addl	%edx, %edi
	cvtsi2sdl	%edi, %xmm0
	movl	%edi, (%rcx)
	divsd	.LC0(%rip), %xmm0
	movsd	%xmm0, (%r8)
	ret
	.cfi_endproc
.LFE23:
	.size	Func, .-Func
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"s=%d, a=%lf"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$255, %edx
	movl	$1, %edi
	movsd	.LC1(%rip), %xmm0
	leaq	.LC2(%rip), %rsi
	movl	$1, %eax
	call	__printf_chk@PLT
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074266112
	.align 8
.LC1:
	.long	0
	.long	1079328768
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
