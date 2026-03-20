	.file	"study_class.cpp"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_a2p1_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata._ZNK5Shape4drawEv.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Shape "
	.section	.text._ZNK5Shape4drawEv,"axG",@progbits,_ZNK5Shape4drawEv,comdat
	.align	1
	.weak	_ZNK5Shape4drawEv
	.type	_ZNK5Shape4drawEv, @function
_ZNK5Shape4drawEv:
.LFB1960:
	.cfi_startproc
	lui	a1,%hi(.LC0)
	lui	a0,%hi(_ZSt4cout)
	li	a2,6
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(_ZSt4cout)
	tail	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	.cfi_endproc
.LFE1960:
	.size	_ZNK5Shape4drawEv, .-_ZNK5Shape4drawEv
	.section	.rodata._ZN5ShapeD2Ev.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	lui	a5,%hi(_ZTV5Shape+8)
	sw	ra,12(sp)
	.cfi_offset 1, -4
	addi	a5,a5,%lo(_ZTV5Shape+8)
	sw	a5,0(a0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(_ZSt4cout)
	li	a2,3
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(_ZSt4cout)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
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
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1964
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	lui	a5,%hi(_ZTV5Shape+8)
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	a5,a5,%lo(_ZTV5Shape+8)
	mv	s0,a0
	sw	a5,0(a0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(_ZSt4cout)
	addi	a1,a1,%lo(.LC1)
	li	a2,3
	addi	a0,a0,%lo(_ZSt4cout)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	li	a1,4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	tail	_ZdlPvj
	.cfi_endproc
.LFE1964:
	.section	.gcc_except_table._ZN5ShapeD0Ev,"awG",@progbits,_ZN5ShapeD5Ev,comdat
.LLSDA1964:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1964-.LLSDACSB1964
.LLSDACSB1964:
.LLSDACSE1964:
	.section	.text._ZN5ShapeD0Ev,"axG",@progbits,_ZN5ShapeD5Ev,comdat
	.size	_ZN5ShapeD0Ev, .-_ZN5ShapeD0Ev
	.section	.rodata._ZN5LabelD2Ev.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
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
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	lui	a5,%hi(_ZTV5Label+8)
	.cfi_offset 8, -8
	mv	s0,a0
	lw	a0,4(a0)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	a5,a5,%lo(_ZTV5Label+8)
	sw	a5,0(s0)
	beq	a0,zero,.L8
	call	_ZdaPv
.L8:
	lui	s1,%hi(_ZSt4cout)
	lui	a1,%hi(.LC2)
	li	a2,3
	addi	a1,a1,%lo(.LC2)
	addi	a0,s1,%lo(_ZSt4cout)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	lui	a5,%hi(_ZTV5Shape+8)
	addi	a5,a5,%lo(_ZTV5Shape+8)
	lui	a1,%hi(.LC1)
	sw	a5,0(s0)
	addi	a0,s1,%lo(_ZSt4cout)
	li	a2,3
	addi	a1,a1,%lo(.LC1)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
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
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1972
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	lui	a5,%hi(_ZTV5Label+8)
	.cfi_offset 8, -8
	mv	s0,a0
	lw	a0,4(a0)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	a5,a5,%lo(_ZTV5Label+8)
	sw	a5,0(s0)
	beq	a0,zero,.L14
	call	_ZdaPv
.L14:
	lui	s1,%hi(_ZSt4cout)
	lui	a1,%hi(.LC2)
	li	a2,3
	addi	a1,a1,%lo(.LC2)
	addi	a0,s1,%lo(_ZSt4cout)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	lui	a5,%hi(_ZTV5Shape+8)
	addi	a5,a5,%lo(_ZTV5Shape+8)
	lui	a1,%hi(.LC1)
	sw	a5,0(s0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,s1,%lo(_ZSt4cout)
	li	a2,3
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	li	a1,8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	tail	_ZdlPvj
	.cfi_endproc
.LFE1972:
	.section	.gcc_except_table._ZN5LabelD0Ev,"awG",@progbits,_ZN5LabelD5Ev,comdat
.LLSDA1972:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1972-.LLSDACSB1972
.LLSDACSB1972:
.LLSDACSE1972:
	.section	.text._ZN5LabelD0Ev,"axG",@progbits,_ZN5LabelD5Ev,comdat
	.size	_ZN5LabelD0Ev, .-_ZN5LabelD0Ev
	.section	.rodata._ZNK5Label4drawEv.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"Label("
	.align	2
.LC4:
	.string	") "
	.section	.text._ZNK5Label4drawEv,"axG",@progbits,_ZNK5Label4drawEv,comdat
	.align	1
	.weak	_ZNK5Label4drawEv
	.type	_ZNK5Label4drawEv, @function
_ZNK5Label4drawEv:
.LFB1968:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	lui	a1,%hi(.LC3)
	.cfi_offset 8, -8
	lui	s0,%hi(_ZSt4cout)
	sw	s1,4(sp)
	li	a2,6
	.cfi_offset 9, -12
	mv	s1,a0
	addi	a1,a1,%lo(.LC3)
	addi	a0,s0,%lo(_ZSt4cout)
	sw	ra,12(sp)
	.cfi_offset 1, -4
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	lw	s1,4(s1)
	beq	s1,zero,.L23
	mv	a0,s1
	call	strlen
	mv	a2,a0
	mv	a1,s1
	addi	a0,s0,%lo(_ZSt4cout)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L21:
	addi	a0,s0,%lo(_ZSt4cout)
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lui	a1,%hi(.LC4)
	li	a2,2
	addi	a1,a1,%lo(.LC4)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	tail	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L23:
	.cfi_restore_state
	addi	a5,s0,%lo(_ZSt4cout)
	lw	a4,0(a5)
	lw	a0,-12(a4)
	add	a0,a0,a5
	lw	a1,20(a0)
	ori	a1,a1,1
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	j	.L21
	.cfi_endproc
.LFE1968:
	.size	_ZNK5Label4drawEv, .-_ZNK5Label4drawEv
	.section	.rodata._ZN5LabelC2EPKc.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"S+ "
	.align	2
.LC6:
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
	sw	s2,16(sp)
	.cfi_offset 18, -16
	lui	s2,%hi(_ZTV5Shape+8)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	mv	s1,a1
	addi	s2,s2,%lo(_ZTV5Shape+8)
	lui	s3,%hi(_ZSt4cout)
	lui	a1,%hi(.LC5)
	mv	s0,a0
	sw	s2,0(a0)
	li	a2,3
	addi	a1,a1,%lo(.LC5)
	addi	a0,s3,%lo(_ZSt4cout)
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.LEHE0:
	lui	a5,%hi(_ZTV5Label+8)
	addi	a5,a5,%lo(_ZTV5Label+8)
	sw	a5,0(s0)
	mv	a0,s1
	call	strlen
	addi	a0,a0,1
.LEHB1:
	call	_Znaj
	mv	a1,s1
	sw	a0,4(s0)
	call	strcpy
	lui	a1,%hi(.LC6)
	li	a2,3
	addi	a1,a1,%lo(.LC6)
	addi	a0,s3,%lo(_ZSt4cout)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.LEHE1:
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L26:
	.cfi_restore_state
	lui	a1,%hi(.LC1)
	mv	a5,a0
	sw	s2,0(s0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,s3,%lo(_ZSt4cout)
	mv	s0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a0,s0
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
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
	.uleb128 .L26-.LFB1966
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
	.text
	.align	1
	.globl	_Z5paint5Shape
	.type	_Z5paint5Shape, @function
_Z5paint5Shape:
.LFB1973:
	.cfi_startproc
	lui	a1,%hi(.LC0)
	lui	a0,%hi(_ZSt4cout)
	li	a2,6
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(_ZSt4cout)
	tail	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	.cfi_endproc
.LFE1973:
	.size	_Z5paint5Shape, .-_Z5paint5Shape
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"A"
	.align	2
.LC8:
	.string	"| "
	.align	2
.LC9:
	.string	"B"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1974:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1974
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	lui	a1,%hi(.LC7)
	addi	a1,a1,%lo(.LC7)
	mv	a0,sp
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	lui	s2,%hi(.LC8)
.LEHB3:
	call	_ZN5LabelC1EPKc
.LEHE3:
	lui	s0,%hi(_ZSt4cout)
	addi	a1,s2,%lo(.LC8)
	addi	a0,s0,%lo(_ZSt4cout)
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	li	a0,8
	call	_Znwj
.LEHE4:
	lui	a1,%hi(.LC9)
	addi	a1,a1,%lo(.LC9)
	mv	s1,a0
.LEHB5:
	call	_ZN5LabelC1EPKc
.LEHE5:
	addi	a1,s2,%lo(.LC8)
	addi	a0,s0,%lo(_ZSt4cout)
.LEHB6:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lw	a5,0(s1)
	mv	a0,s1
	lw	a5,0(a5)
	jalr	a5
	addi	a1,s2,%lo(.LC8)
	addi	a0,s0,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE6:
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	addi	a0,s0,%lo(_ZSt4cout)
.LEHB7:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE7:
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	addi	a0,s0,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	addi	a1,s2,%lo(.LC8)
	addi	a0,s0,%lo(_ZSt4cout)
.LEHB8:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE8:
	lui	a5,%hi(_ZTV5Label+8)
	addi	a5,a5,%lo(_ZTV5Label+8)
	sw	a5,8(sp)
	lw	a5,4(sp)
	addi	a1,s2,%lo(.LC8)
	addi	a0,s0,%lo(_ZSt4cout)
	sw	a5,12(sp)
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE9:
	lw	a5,0(s1)
	mv	a0,s1
	lw	a5,8(a5)
	jalr	a5
	addi	a0,sp,8
	call	_ZN5LabelD1Ev
	mv	a0,sp
	call	_ZN5LabelD1Ev
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L35:
	.cfi_restore_state
	mv	s0,a0
	j	.L32
.L38:
	mv	s0,a0
	addi	a0,sp,8
	call	_ZN5LabelD1Ev
.L32:
	mv	a0,sp
	call	_ZN5LabelD1Ev
	mv	a0,s0
.LEHB10:
	call	_Unwind_Resume
.LEHE10:
.L37:
	lui	a1,%hi(.LC1)
	mv	a5,a0
	addi	a1,a1,%lo(.LC1)
	addi	a0,s0,%lo(_ZSt4cout)
	mv	s0,a5
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	j	.L32
.L36:
	mv	s0,a0
	li	a1,8
	mv	a0,s1
	call	_ZdlPvj
	j	.L32
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
	.uleb128 .L35-.LFB1974
	.uleb128 0
	.uleb128 .LEHB5-.LFB1974
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L36-.LFB1974
	.uleb128 0
	.uleb128 .LEHB6-.LFB1974
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L35-.LFB1974
	.uleb128 0
	.uleb128 .LEHB7-.LFB1974
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L37-.LFB1974
	.uleb128 0
	.uleb128 .LEHB8-.LFB1974
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L35-.LFB1974
	.uleb128 0
	.uleb128 .LEHB9-.LFB1974
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L38-.LFB1974
	.uleb128 0
	.uleb128 .LEHB10-.LFB1974
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE1974:
	.section	.text.startup
	.size	main, .-main
	.weak	_ZTS5Shape
	.section	.srodata._ZTS5Shape,"aG",@progbits,_ZTS5Shape,comdat
	.align	2
	.type	_ZTS5Shape, @object
	.size	_ZTS5Shape, 7
_ZTS5Shape:
	.string	"5Shape"
	.weak	_ZTI5Shape
	.section	.srodata._ZTI5Shape,"aG",@progbits,_ZTI5Shape,comdat
	.align	2
	.type	_ZTI5Shape, @object
	.size	_ZTI5Shape, 8
_ZTI5Shape:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS5Shape
	.weak	_ZTS5Label
	.section	.srodata._ZTS5Label,"aG",@progbits,_ZTS5Label,comdat
	.align	2
	.type	_ZTS5Label, @object
	.size	_ZTS5Label, 7
_ZTS5Label:
	.string	"5Label"
	.weak	_ZTI5Label
	.section	.rodata._ZTI5Label,"aG",@progbits,_ZTI5Label,comdat
	.align	2
	.type	_ZTI5Label, @object
	.size	_ZTI5Label, 12
_ZTI5Label:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS5Label
	.word	_ZTI5Shape
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.sdata.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	2
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.word	__gxx_personality_v0
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
