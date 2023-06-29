; 64-bit machine
global _start

section .text
_start:
    sub rsp, 5                  ; allocate 4 bytes on the stack
    mov [rsp], byte 'H'         ; move 'H' to memory addres pointed by rsp
    mov [rsp + 1], byte 'e'
    mov [rsp + 2], byte 'y'
    mov [rsp + 3], byte '!'
    mov [rsp + 4], byte 0x0a
    mov rax, 1                  ; sys_write() 
    mov rdi, 1                  ; print to stdout
    mov rsi, rsp                ; pointer to the bytes to write
    mov rdx, 5                  ; num of bytes to write
    syscall                     ; do system call

    mov rax, 60                 ; sys_exit()
    mov rdi, 0                  ; exit status is 0
    syscall


