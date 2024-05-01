section .data

section .text
    global _start

_start:
    ;MOV eax, 5
    ;MOV ebx, 3
    ; the result of the sub would be 2

    MOV eax, 3
    MOV ebx, 5
    ; the result of the sub would be 2
    ; eflag CF carry and borrow in subtraction
    ; eflag SF sign flag 1 if negative

    SUB eax, ebx

    MOV ebx, 2
    ADD eax, ebx
    ; ebx = 2 and eax = -2
    ; -2 + 2

    SUB eax, ebx
    INT 80h