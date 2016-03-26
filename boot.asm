; boot asm
	cli ; clear interrupt

loop:
	jmp loop

	times 510-($-$$) db 0
	db 0x55
	db 0xAA