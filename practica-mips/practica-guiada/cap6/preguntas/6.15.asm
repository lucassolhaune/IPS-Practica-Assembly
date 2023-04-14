.data
		dato1: .word 30
		dato2: .word -40
		res: .space 4
.text
main:	lw $t0, dato1
		lw $t1, dato2
		blt $t0, $t1, else
then:	sub $t2, $t0, $t1
		sb $t2, res
		j fin
else:	sub $t2, $t1, $t0
		sb $t2, res
fin: