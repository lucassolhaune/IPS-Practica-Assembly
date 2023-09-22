.data
		dato1: .word 30
		dato2: .word 40
		dato3: .word -1
		res: .space 4
.text
main:	lw $t0, dato1
		lw $t1, dato2
		lw $t2, dato3
if:		blt $t2, $t0, else
		bgt $t2, $t1, else
then:	li $t4, 1
		sb $t4, res
		j fin
else:	sb $0, res
fin: