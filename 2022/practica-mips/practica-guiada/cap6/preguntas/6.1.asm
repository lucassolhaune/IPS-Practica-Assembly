.data
			dato1: .word 40
			dato2: .word 30
			res: .space 4
.text
main: 		lw $t0,dato1($0) 	#cargar dato1 en $t0
			lw $t1,dato2($0) 	#cargar dato2 en $t1
			and $t2,$t2,$0 		#t2=0
Si: 		beq $t1,$0,finsi 	#si $t1 = 0 finsi
entonces: 	div $t0,$t1 		#t0/$t1
			mflo $t2 			#almacenar LO en $t2
finsi: 		add $t3,$t0,$t1 	#$t3=$t0+$t1
			add $t2,$t3,$t2 	#$t2=$t3+$t2
			sw $t2,res($0) 		#almacenar en res $t2