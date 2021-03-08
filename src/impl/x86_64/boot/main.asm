;entry point of the os

global start

section .text
bits 32
start:
 ;WRITING ON VIDEO MEM, video addrs is 0xb8000
	; print `OK`
	mov dword [0xb8000], 0x2f4b2f4f
	hlt ; freeze the screen
