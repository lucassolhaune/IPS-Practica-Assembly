.data
			dato1: .word 30
			dato2: .word 40
			res: .space 1
.text
main: 		lw $t0,dato1($0)
			lw $t1, dato2($0)
			slt $t2, $t1, $t0
			bne $t0,$t1,fineval
			ori $t2,$0,1
fineval:	sb $t2,res($0)