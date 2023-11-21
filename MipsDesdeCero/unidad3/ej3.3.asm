.data
	palabra: .word 0x10203040
	espacio: .space 4
.text
	main:
		lb $t0, palabra
		lb $t1, palabra + 1
		lb $t2, palabra + 2
		lb $t3, palabra + 3
		#Invertir bytes
		sb $t3, espacio
		sb $t2, espacio + 1
		sb $t1, espacio + 2
		sb $t0, espacio + 3
		
		
		