.data
	promptMessage:	.asciiz	"Ingrese una palabra: "
	invertedString:	.asciiz	"Palabra invertida: "
	.align 2
	string:			.space	10
.text
	.globl main
		main:
			#Pide la palabra
			li $v0, 4
			la $a0, promptMessage
			syscall
			
			#Toma la palabra por teclado
			li $v0, 8
			la $a0, string
			la $a1, 10
			syscall
			
			#Apila byte por byte los caracteres de la palabra hasta llegar a \0
			la $t0, string
			while1:
				lb $t1, 0($t0)
				beqz $t1, endWhile1
				addi $sp, $sp, -1
				sb $t1, 0($sp)
				addi $t0, $t0, 1
				j while1
			endWhile1:
			
			#Despila byte por byte los caracteres de la pila y los almacena en la direccion de String
			la $t0, string
			while2:
				lb $t1, 0($t0)
				beqz $t1, endWhile2
				addi $sp, $sp, 1
				lb $t1, 0($sp)
				sb $t1, 0($t0)
				addi $t0, $t0, 1
				j while2
			endWhile2:
			
			#Muestra mensaje del resultado
			li $v0, 4
			la $a0, invertedString
			syscall
			
			#Muestra la palabra invertida
			li $v0, 4
			la $a0, string
			syscall
			
			#Exit
			li $v0, 10
			syscall
