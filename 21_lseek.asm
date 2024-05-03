; cat test.txt
; 001, 15, 20
; 002, 25, 30
; 003, 30, 50
; 004, 60, 80
; 005, 90, 43
; 006, 10, 10

section .data
    pathname db "path/to/file.txt"

section .bss
    buffer resb 10

section .text
    global main

main:
    mov eax, 5          ; open syscall
    mov ebx, pathname   ; file path
    mov ecx, 0          ; read only
    int 80h
    
    mov ebx, eax
    mov eax, 19         ; lseek syscall
    mov ecx, 20         ; bytes to offset
    mov edx, 0          ; offset from beginning of file SEEK_SET
    int 80h

    mov eax, 3          ; read syscall
    mov ecx, buffer     ; buffer to read into
    mov edx, 10         ; read 10 bytes
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h