# Diseña un programa ensamblador que reserva espacio para dos vectores A y B de 20 palabras cada uno a partir de la dirección 0x10000000.

.data 0x10000000

	vec1: .space 80
	vec2: .space 80