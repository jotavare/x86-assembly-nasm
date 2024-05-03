extern printf	; printf(format, message)
extern exit		; exit(1)
				; this tells nasm that this function are gonna be linked later

section .data
	msg DD "Hello World!", 0		; DD = Define Double Word = 32 bits = 4 bytes
	msg DD "Hello World!", 0		; 0 = null character
	fmt DB "Output is: %s %s",10,0	; DB = Define Byte = 8 bits = 1 byte
									; 10 = new line
									; 0 = null character

section .text
	global main		; this is because we need a main function in order to work with gcc

main:
	push msg 		; take the data and push to the end of the stack
	push fmt		; the order is important
	call printf
	push 1
	call exit