.data
	dir: .asciiz "Introduce los caracteres: \n"
	buffer: .space 10 # zona para los caracteres
.text
	main:
		li $v0,4		#Código de imprimir cadena
		la $a0,dir		#Dirección de la cadena
		syscall			#Llamada al sistema
		li $v0,8		#Código de leer el string
		la $a0,buffer	#Dirección lectura cadena
		li $a1,10		#Espacio máximo cadena
		syscall			#Llamada al sistema