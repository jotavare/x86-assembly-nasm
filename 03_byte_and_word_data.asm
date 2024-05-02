section .data
    num DB 1
    num2 DB 2

section .text
global _start

; ebx = all 32 bits
; bx = 16 bits
; bl = low 8 bits
; bh = high 8 bits

_start:
        MOV bl, [num]
        MOV cl, [num2]
        MOV eax, 1
        INT 80h