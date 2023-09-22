.data 0x10001000
	palabra: .space 4	#Reserva espacio para una palabra
	byte: .space 1		#Reserva espacio para un byte
.align 2
	palabra2: .space 4	#Reserva espacio para una palabra alineada en una direccion multiplo de 2^n (2^2 = 4)
