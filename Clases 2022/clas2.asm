.data 
	num .word 10
	
.text
.globl main
	
	main: lw $t0, num
		move $t0, $t1
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		addi $t0, $t0,-1
		add $t1, $t1,$t0
		addi $t0, $t0,-1
		add $t1, $t1,$t0