.data
	num1: .word 100
	num2: .word 30
	res: .space 4
.text
.globl main
main:
	la $t0, num1
	lw $t1, ($t0)
	lw $t2, 4($t0)
	sub $t3, $t1, $t2
	sw $t3, 8($t0)