addTwo:
    push ebp              ; push ebp to stack
    mov ebp, esp          ; set ebp to esp (ret return address)
    mov eax, [ebp + 8]    ; set eax to first argument (4)
    mov ebx, [ebp + 12]   ; set ebx to second argument (1)
    add eax, ebx          ; add eax and ebx
    pop ebp               ; pop ebp from stack (remove it from stack)
    ret

main:
    push 4
    push 1
    call addTwo
    mov ebx, eax
    mov eax, 1
    int 80h