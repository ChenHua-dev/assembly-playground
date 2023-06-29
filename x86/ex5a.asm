; print a str
global _start
section .data
    addr db "yellow", 0x0a
    len equ $ - addr     ; len of string = loc(after str) - loc(start of str)

section .text
_start:
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, addr   ; ecx holds string pointer to 'y', i.e. bytes to write
    mov edx, len      ; number of bytes to write, i.e. len of str
    int 0x80        ; perform system call
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status is 0
    int 0x80
