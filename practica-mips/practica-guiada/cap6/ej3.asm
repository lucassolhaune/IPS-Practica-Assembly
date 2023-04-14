.data
			V: .word 10,50,18,40,3		#Vector de enteros inicializado con valores aleatorios
			rango1: .word 15			#Rango 1
			rango2: .word 45			#Rango 2
			cant: .space 4				#Espacio para la cantidad de elementos que tiene el vector
			res: .space 4				#Espacio para el resultado
.text
main:		la $t0, V					#Guarda la direccion de memoria del vector en $t0
			la $t1, rango1				#Guarda la direccion de memoria de la etiqueta rango1 en $t1
			li $t2, 0					#Inicializa contador de elementos en 0
			li $t3, 0					#Inicializa contador de elementos pertenecientes al rango en 0
			lw $t4, rango1				#Carga el valor del rango 1 en $t4
			lw $t5, rango2				#Carga el valor del rango 2 en $t5
while:		lw $t6, 0($t0)				#Carga un entero del vector V en $t6
			beq $t0, $t1, endWhile		#Si $t0 = $t1, sale del while
if:			blt $t6, $t4, else			#Si $t6 < $t4, salta al else
			bgt $t6, $t5, else			#Si $t6 > $t5, salta al else
			addi $t3, $t3, 1			#Si $t4 <= $t6 <= $t5, suma 1 al contador de elementos pertenecientes al rango
else:		addi $t2, $t2, 1			#Suma 1 al contador de elementos
			addi $t0, $t0, 4			#Pasa a la siguiente posicion del vector
			j while
endWhile:	sw $t2, cant				#Guarda el resultado del contador de elementos en cant
			sw $t3, res
