	.file	"study_class.cpp"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	_ZL20__gthread_key_deletei, @function
_ZL20__gthread_key_deletei:
.LFB176:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE176:
	.size	_ZL20__gthread_key_deletei, .-_ZL20__gthread_key_deletei
	.section	.rodata
	.align	2
.LC0:
	.string	"S+ "
	.section	.text._ZN5ShapeC2Ev,"axG",@progbits,_ZN5ShapeC5Ev,comdat
	.align	1
	.weak	_ZN5ShapeC2Ev
	.type	_ZN5ShapeC2Ev, @function
_ZN5ShapeC2Ev:
.LFB1958:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lui	a5,%hi(_ZTV5Shape+8)
	addi	a4,a5,%lo(_ZTV5Shape+8)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1958:
	.size	_ZN5ShapeC2Ev, .-_ZN5ShapeC2Ev
	.weak	_ZN5ShapeC1Ev
	.set	_ZN5ShapeC1Ev,_ZN5ShapeC2Ev
	.section	.rodata
	.align	2
.LC1:
	.string	"Shape "
	.section	.text._ZNK5Shape4drawEv,"axG",@progbits,_ZNK5Shape4drawEv,comdat
	.align	1
	.weak	_ZNK5Shape4drawEv
	.type	_ZNK5Shape4drawEv, @function
_ZNK5Shape4drawEv:
.LFB1960:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1960:
	.size	_ZNK5Shape4drawEv, .-_ZNK5Shape4drawEv
	.section	.rodata
	.align	2
.LC2:
	.string	"S- "
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.align	1
	.weak	_ZN5ShapeD2Ev
	.type	_ZN5ShapeD2Ev, @function
_ZN5ShapeD2Ev:
.LFB1962:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1962
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lui	a5,%hi(_ZTV5Shape+8)
	addi	a4,a5,%lo(_ZTV5Shape+8)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1962:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5ShapeD2Ev,"awG",@progbits,_ZN5ShapeD5Ev,comdat
.LLSDA1962:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1962-.LLSDACSB1962
.LLSDACSB1962:
.LLSDACSE1962:
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.size	_ZN5ShapeD2Ev, .-_ZN5ShapeD2Ev
	.weak	_ZN5ShapeD1Ev
	.set	_ZN5ShapeD1Ev,_ZN5ShapeD2Ev
	.section	.text._ZN5ShapeD0Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.align	1
	.weak	_ZN5ShapeD0Ev
	.type	_ZN5ShapeD0Ev, @function
_ZN5ShapeD0Ev:
.LFB1964:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	_ZN5ShapeD1Ev
	li	a1,4
	lw	a0,-20(s0)
	call	_ZdlPvj
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1964:
	.size	_ZN5ShapeD0Ev, .-_ZN5ShapeD0Ev
	.section	.rodata
	.align	2
.LC3:
	.string	"L+ "
	.section	.text._ZN5LabelC2EPKc,"axG",@progbits,_ZN5LabelC5EPKc,comdat
	.align	1
	.weak	_ZN5LabelC2EPKc
	.type	_ZN5LabelC2EPKc, @function
_ZN5LabelC2EPKc:
.LFB1966:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1966
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	mv	a0,a5
.LEHB0:
	call	_ZN5ShapeC2Ev
.LEHE0:
	lui	a5,%hi(_ZTV5Label+8)
	addi	a4,a5,%lo(_ZTV5Label+8)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a0,-24(s0)
	call	strlen
	mv	a5,a0
	addi	a5,a5,1
	mv	a0,a5
.LEHB1:
	call	_Znaj
	mv	a5,a0
	mv	a4,a5
	lw	a5,-20(s0)
	sw	a4,4(a5)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	lw	a1,-24(s0)
	mv	a0,a5
	call	strcpy
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE1:
	j	.L10
.L9:
	mv	s1,a0
	lw	a5,-20(s0)
	mv	a0,a5
	call	_ZN5ShapeD2Ev
	mv	a5,s1
	mv	a0,a5
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L10:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1966:
	.section	.gcc_except_table._ZN5LabelC2EPKc,"awG",@progbits,_ZN5LabelC5EPKc,comdat
.LLSDA1966:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1966-.LLSDACSB1966
.LLSDACSB1966:
	.uleb128 .LEHB0-.LFB1966
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1966
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB1966
	.uleb128 0
	.uleb128 .LEHB2-.LFB1966
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1966:
	.section	.text._ZN5LabelC2EPKc,"axG",@progbits,_ZN5LabelC5EPKc,comdat
	.size	_ZN5LabelC2EPKc, .-_ZN5LabelC2EPKc
	.weak	_ZN5LabelC1EPKc
	.set	_ZN5LabelC1EPKc,_ZN5LabelC2EPKc
	.section	.rodata
	.align	2
.LC4:
	.string	"Label("
	.align	2
.LC5:
	.string	") "
	.section	.text._ZNK5Label4drawEv,"axG",@progbits,_ZNK5Label4drawEv,comdat
	.align	1
	.weak	_ZNK5Label4drawEv
	.type	_ZNK5Label4drawEv, @function
_ZNK5Label4drawEv:
.LFB1968:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a1,a5
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1968:
	.size	_ZNK5Label4drawEv, .-_ZNK5Label4drawEv
	.section	.rodata
	.align	2
.LC6:
	.string	"L- "
	.section	.text._ZN5LabelD2Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.align	1
	.weak	_ZN5LabelD2Ev
	.type	_ZN5LabelD2Ev, @function
_ZN5LabelD2Ev:
.LFB1970:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1970
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lui	a5,%hi(_ZTV5Label+8)
	addi	a4,a5,%lo(_ZTV5Label+8)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	lw	a5,4(a5)
	beq	a5,zero,.L13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	mv	a0,a5
	call	_ZdaPv
.L13:
	lui	a5,%hi(.LC6)
	addi	a1,a5,%lo(.LC6)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lw	a5,-20(s0)
	mv	a0,a5
	call	_ZN5ShapeD2Ev
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1970:
	.section	.gcc_except_table._ZN5LabelD2Ev,"awG",@progbits,_ZN5LabelD5Ev,comdat
.LLSDA1970:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1970-.LLSDACSB1970
.LLSDACSB1970:
.LLSDACSE1970:
	.section	.text._ZN5LabelD2Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.size	_ZN5LabelD2Ev, .-_ZN5LabelD2Ev
	.weak	_ZN5LabelD1Ev
	.set	_ZN5LabelD1Ev,_ZN5LabelD2Ev
	.section	.text._ZN5LabelD0Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.align	1
	.weak	_ZN5LabelD0Ev
	.type	_ZN5LabelD0Ev, @function
_ZN5LabelD0Ev:
.LFB1972:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	_ZN5LabelD1Ev
	li	a1,8
	lw	a0,-20(s0)
	call	_ZdlPvj
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1972:
	.size	_ZN5LabelD0Ev, .-_ZN5LabelD0Ev
	.text
	.align	1
	.globl	_Z5paint5Shape
	.type	_Z5paint5Shape, @function
_Z5paint5Shape:
.LFB1973:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	lw	a0,-20(s0)
	call	_ZNK5Shape4drawEv
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1973:
	.size	_Z5paint5Shape, .-_Z5paint5Shape
	.section	.text._ZN5ShapeC2ERKS_,"axG",@progbits,_ZN5ShapeC5ERKS_,comdat
	.align	1
	.weak	_ZN5ShapeC2ERKS_
	.type	_ZN5ShapeC2ERKS_, @function
_ZN5ShapeC2ERKS_:
.LFB1976:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lui	a5,%hi(_ZTV5Shape+8)
	addi	a4,a5,%lo(_ZTV5Shape+8)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1976:
	.size	_ZN5ShapeC2ERKS_, .-_ZN5ShapeC2ERKS_
	.weak	_ZN5ShapeC1ERKS_
	.set	_ZN5ShapeC1ERKS_,_ZN5ShapeC2ERKS_
	.section	.text._ZN5LabelC2ERKS_,"axG",@progbits,_ZN5LabelC5ERKS_,comdat
	.align	1
	.weak	_ZN5LabelC2ERKS_
	.type	_ZN5LabelC2ERKS_, @function
_ZN5LabelC2ERKS_:
.LFB1979:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	_ZN5ShapeC2ERKS_
	lui	a5,%hi(_ZTV5Label+8)
	addi	a4,a5,%lo(_ZTV5Label+8)
	lw	a5,-20(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	lw	a4,4(a5)
	lw	a5,-20(s0)
	sw	a4,4(a5)
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1979:
	.size	_ZN5LabelC2ERKS_, .-_ZN5LabelC2ERKS_
	.weak	_ZN5LabelC1ERKS_
	.set	_ZN5LabelC1ERKS_,_ZN5LabelC2ERKS_
	.section	.rodata
	.align	2
.LC7:
	.string	"A"
	.align	2
.LC8:
	.string	"| "
	.align	2
.LC9:
	.string	"B"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1974:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1974
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	addi	a4,s0,-48
	lui	a5,%hi(.LC7)
	addi	a1,a5,%lo(.LC7)
	mv	a0,a4
.LEHB3:
	call	_ZN5LabelC1EPKc
.LEHE3:
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	li	a0,8
	call	_Znwj
.LEHE4:
	mv	a5,a0
	mv	s1,a5
	li	s2,1
	lui	a5,%hi(.LC9)
	addi	a1,a5,%lo(.LC9)
	mv	a0,s1
.LEHB5:
	call	_ZN5LabelC1EPKc
.LEHE5:
	sw	s1,-36(s0)
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lw	a5,-36(s0)
	lw	a5,0(a5)
	lw	a5,0(a5)
	lw	a0,-36(s0)
	jalr	a5
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE6:
	addi	a4,s0,-48
	addi	a5,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	_ZN5ShapeC1ERKS_
	addi	a5,s0,-40
	mv	a0,a5
.LEHB7:
	call	_Z5paint5Shape
.LEHE7:
	addi	a5,s0,-40
	mv	a0,a5
	call	_ZN5ShapeD1Ev
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE8:
	addi	a4,s0,-48
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	_ZN5LabelC1ERKS_
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE9:
	lw	a5,-36(s0)
	beq	a5,zero,.L19
	lw	a4,0(a5)
	addi	a4,a4,8
	lw	a4,0(a4)
	mv	a0,a5
	jalr	a4
.L19:
	li	s1,0
	addi	a5,s0,-56
	mv	a0,a5
	call	_ZN5LabelD1Ev
	addi	a5,s0,-48
	mv	a0,a5
	call	_ZN5LabelD1Ev
	mv	a5,s1
	j	.L30
.L27:
	mv	s3,a0
	beq	s2,zero,.L22
	li	a1,8
	mv	a0,s1
	call	_ZdlPvj
.L22:
	mv	s1,s3
	j	.L23
.L28:
	mv	s1,a0
	addi	a5,s0,-40
	mv	a0,a5
	call	_ZN5ShapeD1Ev
	j	.L23
.L29:
	mv	s1,a0
	addi	a5,s0,-56
	mv	a0,a5
	call	_ZN5LabelD1Ev
	j	.L23
.L26:
	mv	s1,a0
.L23:
	addi	a5,s0,-48
	mv	a0,a5
	call	_ZN5LabelD1Ev
	mv	a5,s1
	mv	a0,a5
.LEHB10:
	call	_Unwind_Resume
.LEHE10:
.L30:
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1974:
	.section	.gcc_except_table,"aw",@progbits
.LLSDA1974:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1974-.LLSDACSB1974
.LLSDACSB1974:
	.uleb128 .LEHB3-.LFB1974
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB1974
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L26-.LFB1974
	.uleb128 0
	.uleb128 .LEHB5-.LFB1974
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L27-.LFB1974
	.uleb128 0
	.uleb128 .LEHB6-.LFB1974
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L26-.LFB1974
	.uleb128 0
	.uleb128 .LEHB7-.LFB1974
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L28-.LFB1974
	.uleb128 0
	.uleb128 .LEHB8-.LFB1974
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L26-.LFB1974
	.uleb128 0
	.uleb128 .LEHB9-.LFB1974
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L29-.LFB1974
	.uleb128 0
	.uleb128 .LEHB10-.LFB1974
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE1974:
	.text
	.size	main, .-main
	.weak	_ZTV5Label
	.section	.rodata._ZTV5Label,"aG",@progbits,_ZTV5Label,comdat
	.align	2
	.type	_ZTV5Label, @object
	.size	_ZTV5Label, 20
_ZTV5Label:
	.word	0
	.word	_ZTI5Label
	.word	_ZNK5Label4drawEv
	.word	_ZN5LabelD1Ev
	.word	_ZN5LabelD0Ev
	.weak	_ZTV5Shape
	.section	.rodata._ZTV5Shape,"aG",@progbits,_ZTV5Shape,comdat
	.align	2
	.type	_ZTV5Shape, @object
	.size	_ZTV5Shape, 20
_ZTV5Shape:
	.word	0
	.word	_ZTI5Shape
	.word	_ZNK5Shape4drawEv
	.word	_ZN5ShapeD1Ev
	.word	_ZN5ShapeD0Ev
	.weak	_ZTI5Label
	.section	.rodata._ZTI5Label,"aG",@progbits,_ZTI5Label,comdat
	.align	2
	.type	_ZTI5Label, @object
	.size	_ZTI5Label, 12
_ZTI5Label:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS5Label
	.word	_ZTI5Shape
	.weak	_ZTS5Label
	.section	.srodata._ZTS5Label,"aG",@progbits,_ZTS5Label,comdat
	.align	2
	.type	_ZTS5Label, @object
	.size	_ZTS5Label, 7
_ZTS5Label:
	.string	"5Label"
	.weak	_ZTI5Shape
	.section	.srodata._ZTI5Shape,"aG",@progbits,_ZTI5Shape,comdat
	.align	2
	.type	_ZTI5Shape, @object
	.size	_ZTI5Shape, 8
_ZTI5Shape:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS5Shape
	.weak	_ZTS5Shape
	.section	.srodata._ZTS5Shape,"aG",@progbits,_ZTS5Shape,comdat
	.align	2
	.type	_ZTS5Shape, @object
	.size	_ZTS5Shape, 7
_ZTS5Shape:
	.string	"5Shape"
	.section	.srodata,"a"
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.sdata.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	2
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.word	__gxx_personality_v0
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
