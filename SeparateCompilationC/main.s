	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sw	ra,60(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	t4,0(a5)
	lw	t3,4(a5)
	lw	t1,8(a5)
	lw	a7,12(a5)
	lw	a6,16(a5)
	lw	a0,20(a5)
	lw	a1,24(a5)
	lw	a2,28(a5)
	lw	a3,32(a5)
	lw	a4,36(a5)
	lw	a5,40(a5)
	sw	t4,4(sp)
	sw	t3,8(sp)
	sw	t1,12(sp)
	sw	a7,16(sp)
	sw	a6,20(sp)
	sw	a0,24(sp)
	sw	a1,28(sp)
	sw	a2,32(sp)
	sw	a3,36(sp)
	sw	a4,40(sp)
	sw	a5,44(sp)
	li	a1,11
	addi	a0,sp,4
	call	reverseArray
	li	a0,0
	lw	ra,60(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
