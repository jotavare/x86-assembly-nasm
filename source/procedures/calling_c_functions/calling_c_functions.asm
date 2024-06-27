extern sum
extern exit

section .text
    global main

main:
    push 1      ; second argument
    push 2      ; first argument
    call sum    ; call the function
    push eax    ; push the result from sum to the stack
    call exit   ; exit the program