.text
	main:
		li $t0,10
		li $t1, 13			#inicializar reg. t0,$t1
		addi $sp, $sp, -4	#actualizar el sp
		sw $t0, 0($sp)		#apilar t0
		addi $sp, $sp, -4	#actualizar el sp
		sw $t1, 0($sp)		#apilar t1