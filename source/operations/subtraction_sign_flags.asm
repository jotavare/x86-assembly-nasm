section .text
    global _start

_start:
    ; mov eax, 5
    ; mov ebx, 3
    ; the result of the sub would be 2

    mov eax, 3
    mov ebx, 5

    ; the result of the sub would be 2
    ; eflag CF carry and borrow in subtraction
    ; eflag SF sign flag 1 if negative

    sub eax, ebx

    mov ebx, 2
    add eax, ebx

    ; ebx = 2 and eax = -2
    ; -2 + 2

    sub eax, ebx

    mov eax, 1
    mov ebx, 1
    int 80h
