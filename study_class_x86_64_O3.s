	.file	"study_class.cpp"
	.text
	.section	.rodata._ZNK5Shape4drawEv.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Shape "
	.section	.text._ZNK5Shape4drawEv,"axG",@progbits,_ZNK5Shape4drawEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK5Shape4drawEv
	.type	_ZNK5Shape4drawEv, @function
_ZNK5Shape4drawEv:
.LFB1842:
	.cfi_startproc
	endbr64
	movl	$6, %edx
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.cfi_endproc
.LFE1842:
	.size	_ZNK5Shape4drawEv, .-_ZNK5Shape4drawEv
	.section	.rodata._ZN5ShapeD2Ev.str1.1,"aMS",@progbits,1
.LC1:
	.string	"S- "
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN5ShapeD2Ev
	.type	_ZN5ShapeD2Ev, @function
_ZN5ShapeD2Ev:
.LFB1844:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1844
	endbr64
	leaq	16+_ZTV5Shape(%rip), %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$3, %edx
	movq	%rax, (%rdi)
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1844:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5ShapeD2Ev,"aG",@progbits,_ZN5ShapeD5Ev,comdat
.LLSDA1844:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1844-.LLSDACSB1844
.LLSDACSB1844:
.LLSDACSE1844:
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.size	_ZN5ShapeD2Ev, .-_ZN5ShapeD2Ev
	.weak	_ZN5ShapeD1Ev
	.set	_ZN5ShapeD1Ev,_ZN5ShapeD2Ev
	.section	.text._ZN5ShapeD0Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN5ShapeD0Ev
	.type	_ZN5ShapeD0Ev, @function
_ZN5ShapeD0Ev:
.LFB1846:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1846
	endbr64
	leaq	16+_ZTV5Shape(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$3, %edx
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	movl	$8, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE1846:
	.section	.gcc_except_table._ZN5ShapeD0Ev,"aG",@progbits,_ZN5ShapeD5Ev,comdat
.LLSDA1846:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1846-.LLSDACSB1846
.LLSDACSB1846:
.LLSDACSE1846:
	.section	.text._ZN5ShapeD0Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.size	_ZN5ShapeD0Ev, .-_ZN5ShapeD0Ev
	.section	.rodata._ZN5LabelD2Ev.str1.1,"aMS",@progbits,1
.LC2:
	.string	"L- "
	.section	.text._ZN5LabelD2Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN5LabelD2Ev
	.type	_ZN5LabelD2Ev, @function
_ZN5LabelD2Ev:
.LFB1852:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1852
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16+_ZTV5Label(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L8
	call	_ZdaPv@PLT
.L8:
	leaq	_ZSt4cout(%rip), %rbp
	movl	$3, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	16+_ZTV5Shape(%rip), %rax
	movq	%rbp, %rdi
	movl	$3, %edx
	movq	%rax, (%rbx)
	leaq	.LC1(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1852:
	.section	.gcc_except_table._ZN5LabelD2Ev,"aG",@progbits,_ZN5LabelD5Ev,comdat
.LLSDA1852:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1852-.LLSDACSB1852
.LLSDACSB1852:
.LLSDACSE1852:
	.section	.text._ZN5LabelD2Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.size	_ZN5LabelD2Ev, .-_ZN5LabelD2Ev
	.weak	_ZN5LabelD1Ev
	.set	_ZN5LabelD1Ev,_ZN5LabelD2Ev
	.section	.text._ZN5LabelD0Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN5LabelD0Ev
	.type	_ZN5LabelD0Ev, @function
_ZN5LabelD0Ev:
.LFB1854:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1854
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	16+_ZTV5Label(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L14
	call	_ZdaPv@PLT
.L14:
	leaq	_ZSt4cout(%rip), %r12
	movl	$3, %edx
	leaq	.LC2(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	16+_ZTV5Shape(%rip), %rax
	movq	%r12, %rdi
	leaq	.LC1(%rip), %rsi
	movq	%rax, 0(%rbp)
	movl	$3, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	movl	$16, %esi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE1854:
	.section	.gcc_except_table._ZN5LabelD0Ev,"aG",@progbits,_ZN5LabelD5Ev,comdat
.LLSDA1854:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1854-.LLSDACSB1854
.LLSDACSB1854:
.LLSDACSE1854:
	.section	.text._ZN5LabelD0Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.size	_ZN5LabelD0Ev, .-_ZN5LabelD0Ev
	.section	.rodata._ZNK5Label4drawEv.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Label("
.LC4:
	.string	") "
	.section	.text._ZNK5Label4drawEv,"axG",@progbits,_ZNK5Label4drawEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK5Label4drawEv
	.type	_ZNK5Label4drawEv, @function
_ZNK5Label4drawEv:
.LFB1850:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$6, %edx
	leaq	.LC3(%rip), %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	_ZSt4cout(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rbp, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	8(%rbx), %r12
	testq	%r12, %r12
	je	.L23
	movq	%r12, %rdi
	call	strlen@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.L21:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	movl	$2, %edx
	popq	%rbp
	.cfi_def_cfa_offset 16
	leaq	.LC4(%rip), %rsi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L21
	.cfi_endproc
.LFE1850:
	.size	_ZNK5Label4drawEv, .-_ZNK5Label4drawEv
	.section	.rodata._ZN5LabelC2EPKc.str1.1,"aMS",@progbits,1
.LC5:
	.string	"S+ "
.LC6:
	.string	"L+ "
	.section	.text._ZN5LabelC2EPKc,"axG",@progbits,_ZN5LabelC5EPKc,comdat
	.align 2
	.p2align 4
	.weak	_ZN5LabelC2EPKc
	.type	_ZN5LabelC2EPKc, @function
_ZN5LabelC2EPKc:
.LFB1848:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1848
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16+_ZTV5Shape(%rip), %r13
	movl	$3, %edx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	_ZSt4cout(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	leaq	.LC5(%rip), %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%r13, (%rdi)
	movq	%r12, %rdi
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE0:
	leaq	16+_ZTV5Label(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, (%rbx)
	call	strlen@PLT
	leaq	1(%rax), %rdi
.LEHB1:
	call	_Znam@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rdi
	movq	%rbp, %rsi
	call	strcpy@PLT
	movl	$3, %edx
	leaq	.LC6(%rip), %rsi
	movq	%r12, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE1:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	endbr64
	movq	%rax, %rbp
.L25:
	movq	%r13, (%rbx)
	movq	%r12, %rdi
	leaq	.LC1(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE1848:
	.section	.gcc_except_table._ZN5LabelC2EPKc,"aG",@progbits,_ZN5LabelC5EPKc,comdat
.LLSDA1848:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1848-.LLSDACSB1848
.LLSDACSB1848:
	.uleb128 .LEHB0-.LFB1848
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1848
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L26-.LFB1848
	.uleb128 0
	.uleb128 .LEHB2-.LFB1848
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1848:
	.section	.text._ZN5LabelC2EPKc,"axG",@progbits,_ZN5LabelC5EPKc,comdat
	.size	_ZN5LabelC2EPKc, .-_ZN5LabelC2EPKc
	.weak	_ZN5LabelC1EPKc
	.set	_ZN5LabelC1EPKc,_ZN5LabelC2EPKc
	.text
	.p2align 4
	.globl	_Z5paint5Shape
	.type	_Z5paint5Shape, @function
_Z5paint5Shape:
.LFB1855:
	.cfi_startproc
	endbr64
	movl	$6, %edx
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.cfi_endproc
.LFE1855:
	.size	_Z5paint5Shape, .-_Z5paint5Shape
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"A"
.LC8:
	.string	"| "
.LC9:
	.string	"B"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB10:
	.section	.text.startup,"ax",@progbits
.LHOTB10:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1856:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1856
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC7(%rip), %rsi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	.LC8(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	_ZSt4cout(%rip), %rbp
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r14
	movq	%r14, %rdi
.LEHB3:
	call	_ZN5LabelC1EPKc
.LEHE3:
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$16, %edi
	call	_Znwm@PLT
.LEHE4:
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB5:
	call	_ZN5LabelC1EPKc
.LEHE5:
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*(%rax)
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE6:
	leaq	.LC0(%rip), %rsi
	movq	%rbp, %rdi
.LEHB7:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE7:
	leaq	.LC1(%rip), %rsi
	movq	%rbp, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE8:
	leaq	16+_ZTV5Label(%rip), %rax
	movq	%r13, %rsi
	movq	%rbp, %rdi
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE9:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*16(%rax)
	leaq	16(%rsp), %rdi
	call	_ZN5LabelD1Ev
	movq	%r14, %rdi
	call	_ZN5LabelD1Ev
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L42:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L39:
	endbr64
	movq	%rax, %rbp
	jmp	.L34
.L38:
	endbr64
	movq	%rax, %r12
	jmp	.L33
.L37:
	endbr64
	movq	%rax, %rbp
	jmp	.L31
.L36:
	endbr64
	movq	%rax, %rbp
	jmp	.L32
	.section	.gcc_except_table,"a",@progbits
.LLSDA1856:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1856-.LLSDACSB1856
.LLSDACSB1856:
	.uleb128 .LEHB3-.LFB1856
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1856
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L36-.LFB1856
	.uleb128 0
	.uleb128 .LEHB5-.LFB1856
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L37-.LFB1856
	.uleb128 0
	.uleb128 .LEHB6-.LFB1856
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L36-.LFB1856
	.uleb128 0
	.uleb128 .LEHB7-.LFB1856
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L38-.LFB1856
	.uleb128 0
	.uleb128 .LEHB8-.LFB1856
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L36-.LFB1856
	.uleb128 0
	.uleb128 .LEHB9-.LFB1856
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L39-.LFB1856
	.uleb128 0
.LLSDACSE1856:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1856
	.type	main.cold, @function
main.cold:
.LFSB1856:
.L34:
	.cfi_def_cfa_offset 96
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	leaq	16(%rsp), %rdi
	call	_ZN5LabelD1Ev
.L32:
	movq	%r14, %rdi
	call	_ZN5LabelD1Ev
	movq	%rbp, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L33:
	movq	%rbp, %rdi
	leaq	.LC1(%rip), %rsi
	movq	%r12, %rbp
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L32
.L31:
	movl	$16, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	jmp	.L32
	.cfi_endproc
.LFE1856:
	.section	.gcc_except_table
.LLSDAC1856:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC1856-.LLSDACSBC1856
.LLSDACSBC1856:
	.uleb128 .LEHB10-.LCOLDB10
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC1856:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE10:
	.section	.text.startup
.LHOTE10:
	.p2align 4
	.type	_GLOBAL__sub_I__Z5paint5Shape, @function
_GLOBAL__sub_I__Z5paint5Shape:
.LFB2347:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2347:
	.size	_GLOBAL__sub_I__Z5paint5Shape, .-_GLOBAL__sub_I__Z5paint5Shape
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5paint5Shape
	.weak	_ZTS5Shape
	.section	.rodata._ZTS5Shape,"aG",@progbits,_ZTS5Shape,comdat
	.type	_ZTS5Shape, @object
	.size	_ZTS5Shape, 7
_ZTS5Shape:
	.string	"5Shape"
	.weak	_ZTI5Shape
	.section	.data.rel.ro._ZTI5Shape,"awG",@progbits,_ZTI5Shape,comdat
	.align 8
	.type	_ZTI5Shape, @object
	.size	_ZTI5Shape, 16
_ZTI5Shape:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS5Shape
	.weak	_ZTS5Label
	.section	.rodata._ZTS5Label,"aG",@progbits,_ZTS5Label,comdat
	.type	_ZTS5Label, @object
	.size	_ZTS5Label, 7
_ZTS5Label:
	.string	"5Label"
	.weak	_ZTI5Label
	.section	.data.rel.ro._ZTI5Label,"awG",@progbits,_ZTI5Label,comdat
	.align 8
	.type	_ZTI5Label, @object
	.size	_ZTI5Label, 24
_ZTI5Label:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5Label
	.quad	_ZTI5Shape
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
