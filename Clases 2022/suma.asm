.data
	num1: .word 325
	num2: .word -67
	res: .space 4
.text
.globl main
main:
	la $t0, num1
	lw $t1, ($t0)
	lw $t2, 4($t0)
	add $t3, $t1, $t2
	sw $t3, 8($t0)
