.data
	dir: 	.asciiz	"Se va a imprimir el entero: "
	entero:	.word	7
.text
	main:
		li $v0, 4		#Código de imprimir cadena
		la $a0, dir		#Dirección de la cadena
		syscall			#Llamada al sistema
		li $v0, 1		#Código de imprimir entero
		lw $a0, entero	#Entero a imprimir
		syscall			#Llamada al sistema