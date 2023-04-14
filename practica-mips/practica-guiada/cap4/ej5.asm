.data 0x10000000
		num: .word 0x1237
.text
main:	lw $t0, num
		add $t1, $t0, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		add $t1, $t1, $t0
		sw $t1,	num + 4