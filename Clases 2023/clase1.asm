.data
	vector: .word 2,1,10,5,50,3,21,7,9,20
	size: .word
	
.text

main:
		la $t0, vector 		#initialize vector pointer t0
loop2:		add $t1, $t0, 4 	#initialize next vector pointer t1
		lw $t2, size($0) 	#initialize
		add $t2, $t2 -1	#initialize
		beq $t2, $t0, eloop2
loop1:		beq $t2, $0, eloop1	
		
swap:		lw $t3,($t0)
		lw $t4, ($t1)
		ble $t3, $t4, noswap
		sw $t4, ($t0)
		sw $t3, ($t1)

noswap:		add $t2, $t2, -1
		add $t4, $t4, 4
		j loop1

eloop1:		lw $t2, size ($0)
		sw $t2, size ($0)
		add $t0, $t0, 4
		j loop2	
eloop:		