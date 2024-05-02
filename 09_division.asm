section .text
    global _start

_start:
        mov eax,11
        mov ecx,2

        div ecx
        
        ;idiv ecx

        ; ----
        ; signed division
        ; same logic as signed multiplication
        ; ----
        mov eax, 1
        mov ebx, 1
        int 80h

        ; ----
        ; if we divide 11 by 2, the result is 5, since 5*2 = 10 its closest to 11
        ; so the remainder is 1
        ; eax = 5
        ; edx = 1
        ; ----
