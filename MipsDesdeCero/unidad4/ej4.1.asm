.data 0x10000000
	vector: .word 10, 20
.text
	main:	
		lw $t0, vector
		lw $t1, vector + 4
		add $t3, $t0, $t1 #Realizo la suma de los vectores y lo almaceno en el refistro $t3
		sw $t3, vector + 8

