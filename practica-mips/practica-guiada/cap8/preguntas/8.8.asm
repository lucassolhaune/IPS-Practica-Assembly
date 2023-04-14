.data
	suma: .space 4
	dato1: .word 10
	dato2: .word 20
.text
	main:
		addi $sp,$sp,-4 #apilar dir. ret.
		sw $ra,0($sp)
		lw $a0,dato1($0)
		lw $a1,dato2($0)
		jal subr
		sw $v0,suma($0)
		lw $ra,0($sp) #desapilar dir. ret.
		addi $sp,$sp,4
		jr $ra
	subr:
		add $v0,$a0,$a1
		jr $ra