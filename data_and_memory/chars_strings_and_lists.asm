; gdb uses AT&T syntax but we can change to use intel with the following command:
; echo "set disassembly-flavor intel" > ~/.gdbinit
; use x/x to see the memory address in hex and x/x2 to see the next 2 memory addresses and so on

section .data
    ; 65 in ASCII and 41 in hex
    ; char db 'A'

    ; each element is 1 byte
    ; it should have a null terminator like -1 or 0
    ; list db 1,2,3,4,-1

    ; string with null terminator at the end
    string1 db "ABA",0
    string2 db "CDC",0

section .text
    global _start

_start:
    mov bl,[string1]
    mov eax,1
    int 80h