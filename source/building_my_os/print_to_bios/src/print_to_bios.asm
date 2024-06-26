org 0x7c00              ; set origin to 0x7c00, default address where the BIOS loads the bootloader
bits 16                 ; set the assembly to 16-bit mode, typical for bootloader code

main:
    mov ax, 0          ; clear the ax register
    mov ds, ax          ; set the data segment to 0, effectively clearing it
    mov es, ax          ; set the extra segment to 0, effectively clearing it
    mov ss, ax          ; set the stack segment to 0, effectively clearing it

    mov sp, 0x7c00      ; set the stack pointer to the bootloader address, where the bootloader is loaded
    mov si, os_boot_msg ; load the address of the OS boot message into the source index register
    call print          ; call the print function to print the OS boot message
    hlt                 ; Halt the processor, essentially doing nothing

halt:
    jmp halt            ; Infinite loop, jumping back to itself, effectively halting the processor indefinitely

print:
    push si             ; save the source index register on the stack
    push ax             ; save the ax register on the stack
    push bx             ; save the bx register on the stack

print_loop:
    lodsb               ; load the byte at the address in SI into AL and increment SI
    or al, al           ; check if AL is zero (end of string)
    jz print_done       ; if AL is zero, end of string, jump to print_done

    mov ah, 0x0e        ; set the BIOS teletype function to print the character in AL
    mov bh, 0           ; set the page number to 0
    int 0x10            ; call BIOS interrupt 0x10 to print the character in AL

    jmp print_loop      ; jump back to print_loop to continue printing characters

print_done:
    pop bx
    pop ax
    pop si
    ret

os_boot_msg:
    db "OS Booting...", 0x0D, 0x0A, 0

times 510-($-$$) db 0   ; fill the rest of the bootloader space with zeros to ensure it's padded up to 510 bytes
dw 0xaa55               ; boot signature, indicating to the BIOS that this is a bootable device
