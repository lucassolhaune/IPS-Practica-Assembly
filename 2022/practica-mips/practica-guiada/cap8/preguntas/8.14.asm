.data
	dato:	.word	12
	rango1:	.word	10
	rango2:	.word	50
	res:	.space	1
.text
	main:
		addi $sp,$sp,-4 #apilar dir. ret.
		sw $ra,0($sp)
		lw $a0,dato($0)
		lw $a1,rango1($0)
		lw $a2, rango2($0)
		jal subr
		sb $v0, res
		lw $ra,0($sp) #desapilar dir. ret.
		addi $sp,$sp,4
		jr $ra
	subr:
		if:
			blt $a0, $a1, else
			bgt $a0, $a2, else
			li $v0, 1
			j return
		else:
			li $v0, 0
			j return
		return:
			jr $ra