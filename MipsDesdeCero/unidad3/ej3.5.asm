.data 0x10010002

	myBytes:.byte 0x10, 0x20, 0x30, 0x40
	
.align 3

	space2: .space 2
	space3: .space 4
.text
	main:
		lb $t0, myBytes
		lb $t1, myBytes + 1
		lb $t2, myBytes + 2
		lb $t3, myBytes + 3
		sb $t0, space3	
		sb $t1, space3	+ 1
		sb $t2, space3	+ 2
		sb $t3, space3	+ 3				
		
		
		
		
		

	