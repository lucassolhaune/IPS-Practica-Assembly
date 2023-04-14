.data 0x10000000
		enteros: .word 18, -1215	#Guarda un vector de numeros enteros a partir de la direccion 0x10000000
.text
main:	lw $t0, enteros				#Carga el numero 18 en el registro $t0
		lw $t1, enteros + 4			#Carga el numero -1215 en el registro $t1
		li $t2, 5					#Carga la constante 5 en el registro $t2
		div $t0, $t2				#Divide 18 y 5
		mfhi $s1					#El resto se guarda en el registro $s1
		mflo $s0					#El cociente se guarda en el registro $s0
		sw $s0, 0x10010000			#Almacena en la direccion 0x10010000 el cociente de la division entre 18 y 5
		div $t1, $t2				#Divide -1215 y 5
		mfhi $s3					#El resto se guarda en el registro $s3
		mflo $s2					#El cociente se guarda en el registro $s2
		sw $s2, 0x10010004			#Almacena en la direccion 0x10010004 el cociente de la division entre 18 y 5
