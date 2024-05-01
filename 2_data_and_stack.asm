.section data
    ; name, size, inicial value

    ; DB = define byte (1 byte) = 8 bits
    ; DW = define word (2 bytes) = 16 bits
    ; DD = define double word (4 bytes) = 32 bits
    ; DQ = define quad word (8 bytes) = 64 bits
    ; DT = define ten bytes (10 bytes) = 80 bits

    num DD 5 ; stack memory address

section .text
    global _start

_start:
    MOV eax,1
    MOV ebx,[num] ; go to address num and get the value
    INT 80h