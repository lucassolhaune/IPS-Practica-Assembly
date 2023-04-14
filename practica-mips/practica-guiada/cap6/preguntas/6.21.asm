.data
			tira1: .asciiz "Hola"
			tira2: .asciiz "Adios"
.align 2
			n: .space 4
.text
main:		li $t0, 0
			li $t1, 0
			la $t2, tira1
			la $t3, tira2
while:		lb $t4, 0($t2)
			lb $t5, 0($t3)
			beqz $t4, endWhile
			beqz $t5, endWhile
			addi $t2, $t2, 1
			addi $t3, $t3, 1
			addi $t0, $t0, 1
			addi $t1, $t1, 1
			j while
endWhile:	sw $t0, n
			sw $t1, n + 4
		