.data
	dir: .asciiz "Introduce el entero: "
	.align 2
	entero: .space 4
.text
	main:
		li $v0, 4	#Código de imprimir cadena
		la $a0, dir	#Dirección de la cadena
		syscall		#Llamada al sistema
		li $v0, 5	#Código de leer entero
		syscall		#Llamada al sistema
		sw $v0, entero