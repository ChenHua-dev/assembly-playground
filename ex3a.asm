global _start

section .text
_start:
    mov ebx, 42     ; exit status is 42
    mov eax, 1      ; sys_exit system call
    jmp skip        ; jump to "skip" label
    mov ebx, 13
skip:
    int 0x80        ; perform interrupt, processor transfer control 
                    ; to interrupt handler, then sys_exit