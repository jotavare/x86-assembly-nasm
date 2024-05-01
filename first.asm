; compile with nasm -f elf -o first.o first.asm
; link with ld -m elf_i386 -o first first.o
; i386 (intel 386) is the architecture, elf is the format
; ./first to run the program
; echo $? to see the exit status code
; gdb first to debug the program gdb first

; store variables, store in memory
section .data

; actual code being run
section. text

; we need some external to this program so it knows where the program is
global _start

;  declaring a label, a segment of the code
_start:

    ; move from one location to another
    ; move destination, source
    MOV eax,1 ; what system call we are using
    MOV ebx,1 ; output status code of the program
    INT 80h ; calls the system, one means exit