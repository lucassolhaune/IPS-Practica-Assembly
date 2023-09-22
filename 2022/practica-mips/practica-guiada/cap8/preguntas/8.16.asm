.data
	dato:	.word	12
	rango1:	.word	10
	rango2:	.word	50
	res:	.space	1
.text
	main:
		lw $t0, rango1($0)
		lw $t1, rango2($0)
		lw $t2, dato($0)
		la $t3, res($0)
		addi $sp, $sp, -20	#apilar dir. ret.
		sw $t0, 0($sp)		#Rango 1
		sw $t1, 4($sp)		#Rango 2
		sw $t2, 8($sp)		#Dato
		sw $t3, 12($sp)		#Resultado
		sw $ra, 16($sp)		#Direccion Return
		jal subr
		lw $t0, 0($sp)
		lw $t1, 4($sp)
		lw $t2, 8($sp)
		lw $t3, 12($sp)
		lw $ra, 16($sp)
		addi $sp,$sp,20
		jr $ra
	subr:
		lw $t0, 
		if:
			blt 8($sp), 0($sp), else
			bgt 8($sp), 4($sp), else
			li $t0, 1
			sb $t0, 0($a3)
			j return
		else:
			li $t0, 0
			sb $t0, 0($a3)
			j return
		return:
			jr $ra
