section .data

section .text
    global _start

_start:
    mov eax, 3
    mov ebx, 2
    cmp eax, ebx    ; 3 - 2 = 1
                    ; in this case, we dont care about the result
                    ; we care about positive, negative or zero
                    ; since it's positive, 3 > 2

    cmp ebx, eax    ; 2 - 3 = -1
                    ; since it's negative, 2 < 3

    mov eax, 3
    mov ebx, 3

    cmp eax, ebx    ; 3 - 3 = 0
                    ; since it's zero, 3 == 3

    mov eax, -3
    mov ebx, -3

    cmp eax, ebx    ; -3 - (-3) = 0
                    ; since it's zero, -3 == -3

    mov eax, 1
    mov ebx, 2

    jl less_than   ; jump if eax < ebx (1 < 2)
    jmp end        ; jump to end label

less_than:
    mov eax, 1

end:
    int 80h
    