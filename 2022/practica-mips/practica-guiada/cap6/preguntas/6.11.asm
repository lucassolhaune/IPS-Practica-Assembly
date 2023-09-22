.data
		dato1: .word 40
		dato2: .word 30
		res: .space 4
.text
main:	lw $t0, dato1
		lw $t1, dato2
if:		blez $t0, endIf
		bltz $t1, endIf
then:	div $t0, $t1
		mflo $t2
		sw $t3, res
endIf:	add $t2, $t0, $t1
		add $t3, $t3, $t2
		sw $t3, res