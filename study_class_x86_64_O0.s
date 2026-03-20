	.file	"study_class.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"S+ "
	.section	.text._ZN5ShapeC2Ev,"axG",@progbits,_ZN5ShapeC5Ev,comdat
	.align 2
	.weak	_ZN5ShapeC2Ev
	.type	_ZN5ShapeC2Ev, @function
_ZN5ShapeC2Ev:
.LFB1732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV5Shape(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1732:
	.size	_ZN5ShapeC2Ev, .-_ZN5ShapeC2Ev
	.weak	_ZN5ShapeC1Ev
	.set	_ZN5ShapeC1Ev,_ZN5ShapeC2Ev
	.section	.rodata
.LC1:
	.string	"Shape "
	.section	.text._ZNK5Shape4drawEv,"axG",@progbits,_ZNK5Shape4drawEv,comdat
	.align 2
	.weak	_ZNK5Shape4drawEv
	.type	_ZNK5Shape4drawEv, @function
_ZNK5Shape4drawEv:
.LFB1734:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1734:
	.size	_ZNK5Shape4drawEv, .-_ZNK5Shape4drawEv
	.section	.rodata
.LC2:
	.string	"S- "
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.align 2
	.weak	_ZN5ShapeD2Ev
	.type	_ZN5ShapeD2Ev, @function
_ZN5ShapeD2Ev:
.LFB1736:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1736
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV5Shape(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1736:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5ShapeD2Ev,"aG",@progbits,_ZN5ShapeD5Ev,comdat
.LLSDA1736:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1736-.LLSDACSB1736
.LLSDACSB1736:
.LLSDACSE1736:
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.size	_ZN5ShapeD2Ev, .-_ZN5ShapeD2Ev
	.weak	_ZN5ShapeD1Ev
	.set	_ZN5ShapeD1Ev,_ZN5ShapeD2Ev
	.section	.text._ZN5ShapeD0Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.align 2
	.weak	_ZN5ShapeD0Ev
	.type	_ZN5ShapeD0Ev, @function
_ZN5ShapeD0Ev:
.LFB1738:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ShapeD1Ev
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1738:
	.size	_ZN5ShapeD0Ev, .-_ZN5ShapeD0Ev
	.section	.rodata
.LC3:
	.string	"L+ "
	.section	.text._ZN5LabelC2EPKc,"axG",@progbits,_ZN5LabelC5EPKc,comdat
	.align 2
	.weak	_ZN5LabelC2EPKc
	.type	_ZN5LabelC2EPKc, @function
_ZN5LabelC2EPKc:
.LFB1740:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1740
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZN5ShapeC2Ev
.LEHE0:
	leaq	16+_ZTV5Label(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE1:
	jmp	.L8
.L7:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ShapeD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L8:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1740:
	.section	.gcc_except_table._ZN5LabelC2EPKc,"aG",@progbits,_ZN5LabelC5EPKc,comdat
.LLSDA1740:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1740-.LLSDACSB1740
.LLSDACSB1740:
	.uleb128 .LEHB0-.LFB1740
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1740
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB1740
	.uleb128 0
	.uleb128 .LEHB2-.LFB1740
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1740:
	.section	.text._ZN5LabelC2EPKc,"axG",@progbits,_ZN5LabelC5EPKc,comdat
	.size	_ZN5LabelC2EPKc, .-_ZN5LabelC2EPKc
	.weak	_ZN5LabelC1EPKc
	.set	_ZN5LabelC1EPKc,_ZN5LabelC2EPKc
	.section	.rodata
.LC4:
	.string	"Label("
.LC5:
	.string	") "
	.section	.text._ZNK5Label4drawEv,"axG",@progbits,_ZNK5Label4drawEv,comdat
	.align 2
	.weak	_ZNK5Label4drawEv
	.type	_ZNK5Label4drawEv, @function
_ZNK5Label4drawEv:
.LFB1742:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1742:
	.size	_ZNK5Label4drawEv, .-_ZNK5Label4drawEv
	.section	.rodata
.LC6:
	.string	"L- "
	.section	.text._ZN5LabelD2Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.align 2
	.weak	_ZN5LabelD2Ev
	.type	_ZN5LabelD2Ev, @function
_ZN5LabelD2Ev:
.LFB1744:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1744
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV5Label(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L11:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ShapeD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1744:
	.section	.gcc_except_table._ZN5LabelD2Ev,"aG",@progbits,_ZN5LabelD5Ev,comdat
.LLSDA1744:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1744-.LLSDACSB1744
.LLSDACSB1744:
.LLSDACSE1744:
	.section	.text._ZN5LabelD2Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.size	_ZN5LabelD2Ev, .-_ZN5LabelD2Ev
	.weak	_ZN5LabelD1Ev
	.set	_ZN5LabelD1Ev,_ZN5LabelD2Ev
	.section	.text._ZN5LabelD0Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.align 2
	.weak	_ZN5LabelD0Ev
	.type	_ZN5LabelD0Ev, @function
_ZN5LabelD0Ev:
.LFB1746:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5LabelD1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1746:
	.size	_ZN5LabelD0Ev, .-_ZN5LabelD0Ev
	.text
	.globl	_Z5paint5Shape
	.type	_Z5paint5Shape, @function
_Z5paint5Shape:
.LFB1747:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Shape4drawEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1747:
	.size	_Z5paint5Shape, .-_Z5paint5Shape
	.section	.text._ZN5ShapeC2ERKS_,"axG",@progbits,_ZN5ShapeC5ERKS_,comdat
	.align 2
	.weak	_ZN5ShapeC2ERKS_
	.type	_ZN5ShapeC2ERKS_, @function
_ZN5ShapeC2ERKS_:
.LFB1750:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	16+_ZTV5Shape(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1750:
	.size	_ZN5ShapeC2ERKS_, .-_ZN5ShapeC2ERKS_
	.weak	_ZN5ShapeC1ERKS_
	.set	_ZN5ShapeC1ERKS_,_ZN5ShapeC2ERKS_
	.section	.text._ZN5LabelC2ERKS_,"axG",@progbits,_ZN5LabelC5ERKS_,comdat
	.align 2
	.weak	_ZN5LabelC2ERKS_
	.type	_ZN5LabelC2ERKS_, @function
_ZN5LabelC2ERKS_:
.LFB1753:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5ShapeC2ERKS_
	leaq	16+_ZTV5Label(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1753:
	.size	_ZN5LabelC2ERKS_, .-_ZN5LabelC2ERKS_
	.weak	_ZN5LabelC1ERKS_
	.set	_ZN5LabelC1ERKS_,_ZN5LabelC2ERKS_
	.section	.rodata
.LC7:
	.string	"A"
.LC8:
	.string	"| "
.LC9:
	.string	"B"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1748:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1748
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN5LabelC1EPKc
.LEHE3:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$16, %edi
	call	_Znwm@PLT
.LEHE4:
	movq	%rax, %rbx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB5:
	call	_ZN5LabelC1EPKc
.LEHE5:
	movq	%rbx, -72(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE6:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5ShapeC1ERKS_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Z5paint5Shape
.LEHE7:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ShapeD1Ev
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE8:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5LabelC1ERKS_
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE9:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L17
	movq	(%rax), %rdx
	addq	$16, %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L17:
	movl	$0, %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5LabelD1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5LabelD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	jmp	.L28
.L25:
	endbr64
	movq	%rax, %r12
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rbx
	jmp	.L20
.L26:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5ShapeD1Ev
	jmp	.L20
.L27:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5LabelD1Ev
	jmp	.L20
.L24:
	endbr64
	movq	%rax, %rbx
.L20:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5LabelD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L28:
	call	__stack_chk_fail@PLT
.L23:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1748:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1748:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1748-.LLSDACSB1748
.LLSDACSB1748:
	.uleb128 .LEHB3-.LFB1748
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1748
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L24-.LFB1748
	.uleb128 0
	.uleb128 .LEHB5-.LFB1748
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L25-.LFB1748
	.uleb128 0
	.uleb128 .LEHB6-.LFB1748
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L24-.LFB1748
	.uleb128 0
	.uleb128 .LEHB7-.LFB1748
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L26-.LFB1748
	.uleb128 0
	.uleb128 .LEHB8-.LFB1748
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L24-.LFB1748
	.uleb128 0
	.uleb128 .LEHB9-.LFB1748
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L27-.LFB1748
	.uleb128 0
	.uleb128 .LEHB10-.LFB1748
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE1748:
	.text
	.size	main, .-main
	.weak	_ZTV5Label
	.section	.data.rel.ro.local._ZTV5Label,"awG",@progbits,_ZTV5Label,comdat
	.align 8
	.type	_ZTV5Label, @object
	.size	_ZTV5Label, 40
_ZTV5Label:
	.quad	0
	.quad	_ZTI5Label
	.quad	_ZNK5Label4drawEv
	.quad	_ZN5LabelD1Ev
	.quad	_ZN5LabelD0Ev
	.weak	_ZTV5Shape
	.section	.data.rel.ro.local._ZTV5Shape,"awG",@progbits,_ZTV5Shape,comdat
	.align 8
	.type	_ZTV5Shape, @object
	.size	_ZTV5Shape, 40
_ZTV5Shape:
	.quad	0
	.quad	_ZTI5Shape
	.quad	_ZNK5Shape4drawEv
	.quad	_ZN5ShapeD1Ev
	.quad	_ZN5ShapeD0Ev
	.weak	_ZTI5Label
	.section	.data.rel.ro._ZTI5Label,"awG",@progbits,_ZTI5Label,comdat
	.align 8
	.type	_ZTI5Label, @object
	.size	_ZTI5Label, 24
_ZTI5Label:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5Label
	.quad	_ZTI5Shape
	.weak	_ZTS5Label
	.section	.rodata._ZTS5Label,"aG",@progbits,_ZTS5Label,comdat
	.type	_ZTS5Label, @object
	.size	_ZTS5Label, 7
_ZTS5Label:
	.string	"5Label"
	.weak	_ZTI5Shape
	.section	.data.rel.ro._ZTI5Shape,"awG",@progbits,_ZTI5Shape,comdat
	.align 8
	.type	_ZTI5Shape, @object
	.size	_ZTI5Shape, 16
_ZTI5Shape:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS5Shape
	.weak	_ZTS5Shape
	.section	.rodata._ZTS5Shape,"aG",@progbits,_ZTS5Shape,comdat
	.type	_ZTS5Shape, @object
	.size	_ZTS5Shape, 7
_ZTS5Shape:
	.string	"5Shape"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2252:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L31
	cmpl	$65535, -8(%rbp)
	jne	.L31
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2252:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z5paint5Shape, @function
_GLOBAL__sub_I__Z5paint5Shape:
.LFB2253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_GLOBAL__sub_I__Z5paint5Shape, .-_GLOBAL__sub_I__Z5paint5Shape
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5paint5Shape
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
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
