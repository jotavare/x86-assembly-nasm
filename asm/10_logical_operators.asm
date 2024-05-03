section .text
    global _start

_start:

    ; binary form because its easier to look with operators
    mov eax, 0b1010
    mob ebx, 0b1100
    and eax, ebx

    ; and means if both bits are 1 then the result is 1
    ; 1010
    ; 1100
    ; ----
    ; 1000 = 8

    mov eax, 0b1010
    mov ebx, 0b1100
    or eax, ebx

    ; or means if one of the bits is 1 then the result is 1
    ; 1010
    ; 1100
    ; ----
    ; 1110 = 14

    not eax

    ; not means if the bit is 1 then the result is 0 and vice versa
    ; it flips all the bits of eax which is 32 bits
    ; 0000 0000 0000 0000 0000 0000 0000 [1110] = 14
    ; -----------------------------------------
    ; 1111 1111 1111 1111 1111 1111 1111 [0001] = -15
    ; we should get 1 but we get -15 because of flipping all the bits

    mov ecx, 0b1010
    not ecx
    and ecx,0x0000000F ; or 0xF

    ; this is know as a mask because it masks the bits that we dont want
    ; because doing not will flip all the bits and we only want the last 4 bits to be flipped

    ;mov eax, 0b1010
    ;mov ebx, 0b1100
    ;xor eax, ebx

    ; xor means if the bits are different then the result is 1
    ; 1010
    ; 1100
    ; ----
    ; 0110 = 6

    mov eax, 1
    mov ebx, 1
    int 80h
