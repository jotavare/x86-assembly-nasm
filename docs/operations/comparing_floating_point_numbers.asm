section .data
	x DD 3.14
	y DD 2.1

section .text
	global _start

_start:
	movss xmm0, [x]
	movss xmm1, [y]
	ucomiss xmm0, xmm1  ; cmp doesn't work
	ja above            ; jump if above
	jmp end

above:
	mov ecx, 1

end:
	mov eax, 1
	mov ebx, 1
	int 80h