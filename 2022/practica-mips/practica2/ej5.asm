.data
			V: .word 10,20,0,40,3		#Vector de enteros inicializado con valores aleatorios
			total: .space 4				#Espacio para la cantidad de ceros que tiene el vector			
			cant: .space 4				#Espacio para la cantidad de elementos que tiene el vector
.text
main:		la $t0, V					#Guarda la direccion de memoria del vector en $t0
			la $t1, total				#Guarda la direccion de memoria de la etiqueta total en $t1
			li, $t2, 0					#Inicializa contador de ceros en 0
			li, $t3, 0					#Inicializa contador de elementos en 0
while:		lw $t4, 0($t0)				#Carga un entero del vector V en $t4
			beq $t0, $t1, endWhile		#Si $t0 = $t1, sale del while
if:			bnez $t4, endIf				#Si $t4 es distinto de 0, salta a endIf
			addi $t2, $t2, 1			#Si $t0 = 0, suma 1 al contador de ceros
endIf:		addi $t3, $t3, 1			#Suma 1 al contador de elementos
			addi $t0, $t0, 4			#Pasa a la siguiente posicion del vector
			j while
endWhile:	sw $t2, total				#Guarda el resultado del contador de ceros en total
			sw $t3, cant				#Guarda el resultado del contador de elementos en cant
