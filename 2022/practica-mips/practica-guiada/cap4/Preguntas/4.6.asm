.data
		numero1: .word 3520274 #M�x. Positivo represent.
		numero2: .word 23508
.space 8
.text
main: 	lw $t0,numero1($0)
		lw $t1,numero2($0)
		mult $t0,$t1 # multiplica los dos n�meros
		mfhi $t0
		mflo $t1
		sw $t0,numero2+4($0) #32 bits m�s peso
		sw $t1,numero2+8($0) #32 bits menos peso
