.data 0x10000000
		V: .word 10,20,25,500,3	#Guarda un vector de numeros a partir de la direccion 0x10000000
.text
main:	lw $s0, V				#Carga el entero 10 en el registro $s0
		lw $s1, V + 4			#Carga el entero 20 en el registro $s1
		lw $s2, V + 8			#Carga el entero 25 en el registro $s2
		lw $s3, V + 12			#Carga el entero 500 en el registro $s3
		lw $s4, V + 16			#Carga el entero 3 en el registro $s4
		la $t0, 0x10010000		#Carga la direccion de memoria 0x10010000 en el registro $t0
		sw $s0, 0($t0)			#Almacena el entero 10 en la direccion 0x10010000
		sw $s1, 4($t0)			#Almacena el entero 20 en la direccion 0x10010004
		sw $s2, 8($t0)			#Almacena el entero 25 en la direccion 0x10010008
		sw $s3, 12($t0)			#Almacena el entero 500 en la direccion 0x10010012
		sw $s4, 16($t0)			#Almacena el entero 3 en la direccion 0x10010016
