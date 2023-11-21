.data
	palabra: .word 0x10203040
.text
	main:
		lw $t0, palabra #Introduzco palabra en el registro
		#Divido la palabra en dos mitades
		lh $t0, palabra 
		lh $t1, palabra + 2
		sh $t1, palabra
		sh $t0, palabra + 2
		