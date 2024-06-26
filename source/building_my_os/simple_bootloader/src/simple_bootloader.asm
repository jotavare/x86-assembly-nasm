org 0x7c00              ; set origin to 0x7c00, default address where the BIOS loads the bootloader
bits 16                 ; set the assembly to 16-bit mode, typical for bootloader code

main:
    hlt                 ; Halt the processor, essentially doing nothing

halt:
    jmp halt            ; Infinite loop, jumping back to itself, effectively halting the processor indefinitely

times 510-($-$$) db 0   ; fill the rest of the bootloader space with zeros to ensure it's padded up to 510 bytes
dw 0xaa55               ; boot signature, indicating to the BIOS that this is a bootable device
