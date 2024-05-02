section .data

section .text
    global _start

_start:
    ;MOV eax, 1
    ;MOV ebx, 2

    ; 0b is a prefix for binary numbers
    MOV al, 0b11111111
    MOV bl, 0b00000001

    ; takes the value of eax and adds the value of ebx
    ; stores the result in eax
    ; in this case the 1 is gonna go to the carry flag (CF)
    ; CP flag is gonna be set to 1 because least significant bit is 1
    ADD al, bl

    ; continue the next 8 bits
    ; the carry flag is gonna be added to the result
    ADC ah, 0

    MOV eax, 1
    MOV ebx, 1
    INT 80h; exit the program

;----------------
;     1111 1111
;          0001
;     ---------
; (1) 0000 0000
;----------------
