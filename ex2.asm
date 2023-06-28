global main

section .data
    msg db "Hello, world!", 0x0a    ; 0x0a means new line
    len equ $ - msg                 ; len of string = location(start of str) - location(after str)

section .text
_start:                               ; create system call that writes string to stdout
    mov eax, 4      ; 4 means sys_write system call
    mov ebx, 1      ; 1 stdout file descriptor
    mov ecx, msg    ; ecx hold string pointer, i.e. bytes to write
    mov edx, len    ; num of bytes to write
    int 0x80        ; perform system call
    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status is 0
    int 0x80

