.data
	dir: 	.asciiz	"Se va a imprimir el entero: "
	entero:	.word	7
.text
	main:
		li $v0, 4		#C�digo de imprimir cadena
		la $a0, dir		#Direcci�n de la cadena
		syscall			#Llamada al sistema
		li $v0, 1		#C�digo de imprimir entero
		lw $a0, entero	#Entero a imprimir
		syscall			#Llamada al sistema