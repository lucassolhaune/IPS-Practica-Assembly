.data
		palabra: .word 0x10203040
.text
main: 	lh $t0, palabra			#Carga 0x1020 en el registro $t0
		lh $t1, palabra + 2		#Carga 0x3040 en el registro $t1
		sh $t1, palabra			#Guarda 0x3040 en la direccion de la etiqueta Palabra (0x1001000)
		sh $t0, palabra + 2		#Guarda 0x1020 en la direccion de la etiqueta Palabra + 2 (0x1001002)