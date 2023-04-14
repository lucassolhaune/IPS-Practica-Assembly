.data
	divi: .space 4
	dato1: .word 20
	dato2: .word 10
.text
	main:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		lw $a0, dato1($0)
		lw $a1, dato2($0)
		jal subr
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		sw $v0, divi($0)
		jr $ra

	subr:
		addi $sp,$sp,-4 #apilar dir. ret.
		sw $ra, 0($sp)
		jal comp
		if1:
			bne $v0, 1, else1
			div $a0, $a1
			mflo $v0
			j return1
		else1:
			li $v0, -1
			j return1
		return1:
			lw $ra, 0($sp) #desapilar dir. ret.
			addi $sp, $sp, 4
			jr $ra
	comp:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		if2:
			blez $a0, else2
			blez $a1, else2
			li $v0, 1
			j return2
		else2:
			li $v0, 0
			j return2
		return2:
			lw $ra, 0($sp) #desapilar dir. ret.
			addi $sp, $sp, 4
			jr $ra