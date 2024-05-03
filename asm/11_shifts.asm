section .text
    global _start

_start:
        move eax, 2 ; 0010
        shr eax, 1  ; shift the bits to the right one spot -> 0001
                    ; this equivelent to dividing by 2 but it's faster
        
        move eax, 2 ; 0010
        shl eax, 1  ; shift the bits to the left one spot -> 0010
                    ; this equivelent to multiplying by 2 but it's faster

        move eax, 2 ; 0010
        sar eax, 1  ; it shifts the bits to the right but it keeps the sign bit
                    ; this equivelent to dividing by 2 but it's faster

        move eax, 2 ; 0010
        sal eax, 1  ; it shifts the bits to the left but it keeps the sign bit
                    ; this equivelent to multiplying by 2 but it's faster
