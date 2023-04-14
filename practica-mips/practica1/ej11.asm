.data 0x10010002
		bytesVector: .byte 0x10,0x20,0x30,0x40	#Guarda un vector de bytes a partir de la direccion 0x10000002
.align 3										#0x10010008
		.space 2								#0x10010010
		palabra: .space 4						#Reserva espacio para una palabra
.text
main:	lb $t0, bytesVector						#Carga el numero 0x10 en el registro
		lb $t1, bytesVector + 1					#Carga el numero 0x20 en el registro
		lb $t2, bytesVector + 2					#Carga el numero 0x30 en el registro
		lb $t3, bytesVector + 3					#Carga el numero 0x40 en el registro
		sb $t0, palabra							#Almacena 0x10 en la direccion 0x10010010
		sb $t1, palabra + 1						#Almacena 0x20 en la direccion 0x10010011
		sb $t2, palabra + 2						#Almacena 0x30 en la direccion 0x10010012
		sb $t3, palabra + 3						#Almacena 0x40 en la direccion 0x10010013
