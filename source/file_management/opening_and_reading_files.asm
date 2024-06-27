; x86 system call table: https://faculty.nps.edu/cseagle/assembly/sys_call.html
; open man page: https://man7.org/linux/man-pages/man2/open.2.html
; read man page: https://man7.org/linux/man-pages/man2/read.2.html
; fnctl.h file: https://sites.uclouvain.be/SystInfo/usr/include/asm-generic/fcntl.h.html

section .data
    pathname db "path/to/file.txt"

section .bss
    buffer resb 1024    ; Reserve 1024 bytes for the buffer because we don't know the file size

section .text
    global main

main:
    mov eax, 5          ; Open system call
    mov ebx, pathname   ; File path
    mov ecx, 0          ; Flags
    int 80h             ; Call the system

    mov ebx, eax        ; Store the file descriptor in ebx
    mov eax, 3          ; Read system call
    mov ecx, buffer     ; Buffer to store the data
    mov edx, 1024       ; Size of the buffer
    int 80h             ; Call the system

    mov eax, 1          ; Exit system call
    mov ebx, 0          ; Exit code (success)
    int 80h             ; Call the system