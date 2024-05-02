section .data
    list DB 1,2,3,4

section .text

global _start

_start:
    mov eax, 0
    mov cl, 0

loop:
    mov bl,[list + eax]
    add cl, bl
    inc eax     ; eax = eax + 1 ... can also do add eax, 1
    cmp eax, 4  ; can aslo do cmp [list + eax], 4
    JE end
    JMP loop

end:
    mov eax, 1  ; Set eax to 1, indicating the exit system call
    mov ebx, 1  ; Set ebx to 1, indicating a normal program termination
    int 80h     ; Invoke the system call