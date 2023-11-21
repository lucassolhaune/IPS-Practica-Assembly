# Sabiendo que un entero se almacena en un word, diseña un programa ensamblador que defina en la memoria de datos la matriz A de enteros definida como
#	 1 2 3
#   A =  4 5 6 ,
#	 7 8 9	     	
#a partir de la dirección 0x10010000 suponiendo que:
#a) La matriz A se almacena por filas.
#b) La matriz A se almacena por columnas.
.data 0x10010000

	matrixAFilas: .word 1,2,3,4,5,6,7,8,9
	matrixAColumna: .word 1,4,7,2,5,8,3,6,9
	