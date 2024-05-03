section .data

section .text

global main

addTwo:             ; define a function called addTwo
    add eax, ebx    ; add the two arguments
    ret             ; return the result

main:
    mov eax, 4  ; set the first argument to 4
    mov ebx, 1  ; set the second argument to 1
    call addTwo ; call the addTwo function
    mov ebx,eax ; store the result of eax in ebx
    mov eax, 1  ; set eax to 1
    int 80h     ; exit the program