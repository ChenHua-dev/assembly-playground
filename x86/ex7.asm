global _start
section .data
    msg db "Hello, world!", 0x0a
    len equ $ - msg

section .text
_start:
    call _printHello
    mov rax, 60         ; sys_exit()
    mov rdi, 0          ; exit status is 0
    syscall

_printHello:
    mov rax, 1          ; sys_write() 
    mov rdi, 1          ; print to stdout
    mov rsi, msg        ; pointer to the bytes to write
    mov rdx, len        ; num of bytes to write
    syscall
    ret