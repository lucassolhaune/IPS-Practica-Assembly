.data
	dir: .asciiz "Introduce el entero: "
	.align 2
	entero: .space 4
.text
	main:
		li $v0, 4	#C�digo de imprimir cadena
		la $a0, dir	#Direcci�n de la cadena
		syscall		#Llamada al sistema
		li $v0, 5	#C�digo de leer entero
		syscall		#Llamada al sistema
		sw $v0, entero