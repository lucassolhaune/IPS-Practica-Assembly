.data
	num1: .word 34
	num2: .word 0x8081
.text
.globl main
	main:
		la $t1, num1
		lw $t0, 0($t1)
		lw $t2, 8($t1)
		lw $t0, num1($0) #Preferido del profe
		lw $t2, num2($0)
		lw $t0, num1
		sw $t0, num2
		sw $t2, num1
		
		lh $t3, num1
		lui $t3, 0xffff
		not $t4, $t4
		and $t5, $t3, $t4
		li $t7, 0xffff
		li $t7, 0xa87cf