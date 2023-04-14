.data 
	num: .word 10	
.text
.globl main
main:	lw $t0, num
		move $t1, $t0
lcount:	addi $t0, $t0,-1	# t0--
		beq  $t0, $zero, lend # branch if equal
		add $t1, $t1,$t0	# $t1 = $t1 + $t0
		j lcount
lend:  	li $v0, 10
		syscall