; bss means block started by symbol
; bss is used to declare uninitialized data == reserve space in memory

section .bss
    ; instead of DB (define byte) we use RESB (reserve byte)
    ; RESB 3 means reserve 3 bytes
    num RESB 3

section .data
    ; we can also define/initialize with default values
    ; DB 3 DUP(2) means define 3 bytes with value 2
    ; num2 DB 3 DUP(2)

section .text
    global _start

_start:
    ; we need to move 1 to bl first
    ; because we can't move 1 to [num] directly since [num] is a memory address
    mov bl,1

    ; [num] points to the first byte of num
    ; [num+1] points to the second byte of num
    ; each +1 means 1 byte, so its different for words, etc
    mov [num], bl
    mov [num+1], bl
    mov [num+2], bl

    ; exit the program
    mov eax, 1
    int 80h