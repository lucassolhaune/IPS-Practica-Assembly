.data
		space1: .space 2
		myBytes: .byte 0x10, 0x20, 0x30, 0x40
.align 3
		space2: .space 2
		space3: .space 4
.text
main: 	lb $s0, myBytes
		lb $s1, myBytes+1
		lb $s2, myBytes+2
		lb $s3, myBytes+3
		sb $s0, space3
		sb $s1, space3+1
		sb $s2, space3+2
		sb $s3, space3+3
