.data
		dato1: .word 40
		dato2: .word -30
		res: .space 4
.text
main:		lw $t0, dato1
			lw $t1, dato2
si:			blez $t1, entonces
sino:		div $t0, $t1
			mflo $t3
			sw $t3, res
entonces:	add $t3, $t0, $t1
			add $t2, $t2, $t3
			sw $t2, res