.data
			cadena: .asciiz "Arquitectura"	#Vector de caracteres
			letra: .byte 'u'				#Letra a analizar
.align 2
			res: .space 4					#Resultado
.text
main:		la $t0, cadena					#Guarda la direccion de memoria del vector en $t0
			la $t1, letra					#Guarda la direccion de memoria de la letra en $t1
			lb $t2, letra					#Guarda la letra en $t3
			li $t3, 0						#Inicializa contador en 0
do:			lb $t4, 0($t0)					#Guarda bytes del vector en $t0
if:			bne $t4, $t2, endIf				#Si $t4 es distinto a $t2, salta a endIf
			addi $t3, $t3, 1				#Si $t4 = $t2, suma 1 al contador
endIf:		addi $t0, $t0, 1				#Suma 1 para pasar al siguiente byte del vector
			beq $t0, $t1, endWhile			#Si $t0 = $t1 sale del Do While
while: 		j do
endWhile:	sw $t3, res						#Guarda el resultado del contador en la memoria reservada
