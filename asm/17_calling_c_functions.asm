extern teste
extern exit

section .data
section .text

global main

main:
    PUSH 1      ; second argument
    PUSH 2      ; first argument
    CALL test   ; call the function
    PUSH eax    ; push the result from test to the stack
    CALL exit   ; exit the program