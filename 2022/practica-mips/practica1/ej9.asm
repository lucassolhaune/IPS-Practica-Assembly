.data
		palabra: .word 0x10203040
		espacio: .space 4
.text
main:	lb $t0, palabra			#Carga 0x40 en el registro $t0
		lb $t1, palabra + 1		#Carga 0x30 en el registro $t1
		lb $t2, palabra + 2		#Carga 0x20 en el registro $t2
		lb $t3, palabra + 3		#Carga 0x10 en el registro $t3
		sb $t3, espacio			#Almacena 0x10 en 0x1001004
		sb $t2, espacio + 1		#Almacena 0x20 en 0x1001005
		sb $t1, espacio + 2		#Almacena 0x30 en 0x1001006
		sb $t0, espacio + 3		#Almacena 0x40 en 0x1001007