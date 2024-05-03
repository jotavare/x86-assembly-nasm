section .data
    x DD 3.14
    y DD 2.1

section .text

global _start

_start:
        movss xmm0, [x] ; scalar single precision floating point move
                        ; scalar because we are moving a single decimal value
                        ; single precision meaning is a 32-bit floating point number
                        ; we use special registers called XMM registers specifically for floating point operations
                        ; xmm 0 to 15 are available
        
        movss xmm1, [y]
        addss xmm0, xmm1
        mov ebx, 1
        int 80h

        ; gdb p $xmm0.v4_float[0] to print the value of xmm0
        ; xmm0 = 3.1400001
        ; xmm1 = 2.0999999
        ; result = 5.2399977

        i triple i floating point notation
