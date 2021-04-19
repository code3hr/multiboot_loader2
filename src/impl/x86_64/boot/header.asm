;this file is because: bootloader can understand that we have an os here that can be ran on your pc

; the bootloader has to locate the os appropriately to the specific pc

; following the multiboot2 specification
section .multiboot_header
header_start:
	; ;magic number for multiboot2
	dd 0xe85250d6 ; multiboot2
	; architecture
	dd 0 ;means protected mode i386
	; header length
	dd header_end - header_start
	; checksum
	dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

	; end tag
	dw 0
	dw 0
	dd 8
header_end:
