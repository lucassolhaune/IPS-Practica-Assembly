.data 0x10000000
		V: .word 10,20,25,500,3	#Vector de enteros almacenado en 0x10000000
.text
main:	lw $s0, V				#Carga el entero 10 en el registro $s0
		lw $s1, V + 4			#Carga el entero 20 en el registro $s1
		lw $s2, V + 8			#Carga el entero 25 en el registro $s2
		lw $s3, V + 12			#Carga el entero 500 en el registro $s3
		lw $s4, V + 16			#Carga el entero 3 en el registro $s4
