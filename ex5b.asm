global _start
section .data
    addr db "yellow", 0x0a  ; str <addr> = "yellow/n"
    len equ $ - addr        ; len of string <addr>
section .text
_start:
    mov [addr], byte 'H'
    mov [addr + 5], byte '!'
    mov eax, 4              ; sys_write system call
    mov ebx, 1              ; stdout file descriptor
    mov ecx, addr           ; bytes to write
    mov edx, len            ; num of bytes to write == len of str
    int 0x80                ; perform system call
    mov eax, 1              ; sys_exit system call
    mov ebx, 0              ; exit status is 0
    int 0x80

    

