section .data
    num db 1
    num2 db 2

section .text
    global _start

; ebx = all 32 bits
; bx = 16 bits
; bl = low 8 bits
; bh = high 8 bits

_start:
        mov bl, [num]
        mov cl, [num2]
        mov eax, 1
        int 80h