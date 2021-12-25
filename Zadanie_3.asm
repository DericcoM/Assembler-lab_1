%include "io.inc"

section .text
global CMAIN
CMAIN:
	mov ebp, esp; for correct debugging

	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx

	mov al, 0x1F ; 0xC
	mov bl, 0x13 ; 0xFFFD
	mov cl, 0xD ; 0xFFF6

	cmp ax, bx
	jnl num_1

	cmp bl, cl
	jnl num_2

	mov dl, cl
	jmp quit

num_2:
	mov dl, bl
	jmp quit

num_1:
	cmp al, cl
	jnl num_3

	mov dl, cl
	jmp quit

num_3:
	mov dl, al

quit:
	ret
