#Diseña un programa ensamblador que realiza la siguiente reserva de espacio en memoria a partir de la dirección 0x10001000: una palabra, un byte y otra palabra
#alineada en una dirección múltiplo de 4.

.data 0x10001000
	
	palabra: .space 4 	#Una palabra = 4 bytes
	.align 2		#Numero multiplo de 2
	byte: .space  1		
	.align 2		#Numero multiplo de 2
	palabra2: .space 4	#Una palabra = 4 bytes
