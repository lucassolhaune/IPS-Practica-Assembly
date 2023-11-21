.data  0x10000000
		vector: .word 18, -1215
		num: .word 5
		
.text
main:	lw $t0, vector
		lw $t3, vector + 4
		lw $a0, num
		div $t0, $a0
		mfhi $t2
		mflo $t1
		div $t3, $a0
		mfhi $t5
		mflo $t4
		sw $t1, 0x10010000
		sw $t4, 0x10010004