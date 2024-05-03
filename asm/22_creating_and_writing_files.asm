section .data
    pathname db "path/to/file.txt"
    msg db "Hello, World!", 0AH,0DH, "$"

section .text
    global main

main:
    mov eax, 5
    mov ebx, pathname

    ; using various flags can be calculated using bitwise OR
    ; or check directly in <stat.h> header file

    mov ecx, 101o
    mov edx, 0700o
    int 80h

    mov ebx, eax
    mov eax, 4
    mov ecx msg
    mov edx, 16

    mov eax, 1
    mov ebx, 0
    int 80h