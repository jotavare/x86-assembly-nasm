extern printf
extern exit	; this tells nasm that this function are gonna be linked later

; printf(format, message)
; exit(1)

section .data
	msg DD "Hello World!", 0
	fmt DB "Output is: %s",10,0 ; 10 = nel line character

section .text

global main ; this is because we need a main function i order to work with gcc



main:
	PUSH msg ; take the data and push to stack
	PUSH fmt ; the order is important
	CALL printf
	PUSH 1
	CALL exit 
