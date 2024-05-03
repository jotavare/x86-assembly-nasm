section .text
    global _start

_start:
    ;mov al,2
    ;mov bl,3

    ; ----
    ; add al and bl
    ; we dont specify the destination register
    ; al is known as accumulator register
    ; so the result will be stored in al
    ; ----

    mov al, 0xff
    mov bl, 2

    ; ----
    ; 0xff represents 11111111 in binary = 255 in decimal
    ; 2 represents 00000010 in binary = 2 in decimal
    ; ----

    ;mul bl
    ;int 80h

    ; ----
    ; in this case, the result will be stored in ax
    ; ax is a 16 bit register
    ; 255 * 2 = 510 = 00000001 11111110 in binary
    ; ----

    imul bl
    
    ; ----
    ; the range of imul, in this case with al, is -128 to 127 because al is a signed 8-bit register
    ; This instruction multiplies the value in the AL register (which is 0xFF) by the value in the BL register
    ; It's worth noting that IMUL with a single operand will multiply the value in AL by the operand and store the result in AX
    ; Since AL contains a signed value (-1) and BL contains 2, the result of the multiplication will be -2
    ; ----
    mov eax, 1
    mov ebx, 1
    int 80h

    ; ----
    ; imul = signed mutiplication assumes that the value is signed
    ; the value of al is -1 because 0xff is a signed value
    ; ----

    ; ----
    ; why is 0xff (255) shows in gdb as -1?
    ; 0xff = 11111111 in binary
    ; in this case we are using 8 bit register (al)
    ; the most significant bit is the sign bit which is 1
    ; 0xFF is interpreted as -1 in two's complement notation
    ; ----

