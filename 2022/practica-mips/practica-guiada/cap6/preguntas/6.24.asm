.data
		V: .word 6,7,8,9,10,-1,34,23
		V2: .space 32
.text
main: 	la $t0, V
		la $t3, V2
		li $t1, 0
for:	bgt $t1, 7, endFor
		lw $t2, 0($t0)
		addi $t2, $t2, 1
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		addi $t3, $t3, 4
		sw $t2, 0($t3)
		j for
endFor: sw $t2, 0($t3)