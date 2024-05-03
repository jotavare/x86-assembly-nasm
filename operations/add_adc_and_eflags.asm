section .text
    global _start

_start:
    ; mov eax, 1
    ; mov ebx, 2
    ; 0b is a prefix for binary numbers

    mov al, 0b11111111
    mov bl, 0b00000001

    ; takes the value of eax and adds the value of ebx
    ; stores the result in eax
    ; in this case the 1 is gonna go to the carry flag (CF)
    ; CP flag is gonna be set to 1 because least significant bit is 1

    add al, bl

    ; continue the next 8 bits
    ; the carry flag is gonna be added to the result

    adc ah, 0

    mov eax, 1
    mov ebx, 1
    int 80h

    ;---------------;
    ;     1111 1111 ;
    ;          0001 ;
    ;     --------- ;
    ; (1) 0000 0000 ;
    ;---------------;