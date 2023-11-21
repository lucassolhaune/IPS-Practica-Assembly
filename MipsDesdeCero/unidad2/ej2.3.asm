#3. Diseña un programa ensamblador que realice la siguiente reserva de espacio e inicialización en memoria a partir de la dirección por defecto: 3 (palabra), 0x10
#(byte), reserve 4 bytes a partir de una dirección múltiplo de 4, y 20 (byte).

.data
	palabra: .word 3
	myByte: .byte 0x10
	.align 2
	space: .space 4
	myByte1: .byte 20
	