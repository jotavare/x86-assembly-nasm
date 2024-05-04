extern teste
extern exit

section .text
    global main

main:
    push 1      ; second argument
    push 2      ; first argument
    call test   ; call the function
    push eax    ; push the result from test to the stack
    call exit   ; exit the program