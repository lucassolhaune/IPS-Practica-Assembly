.data
	dir: .asciiz "Introduce los caracteres: \n"
	buffer: .space 10 # zona para los caracteres
.text
	main:
		li $v0,4		#C�digo de imprimir cadena
		la $a0,dir		#Direcci�n de la cadena
		syscall			#Llamada al sistema
		li $v0,8		#C�digo de leer el string
		la $a0,buffer	#Direcci�n lectura cadena
		li $a1,10		#Espacio m�ximo cadena
		syscall			#Llamada al sistema