global _start
_start: 
    mov eax, 1  ; val 1 means system exit call
    mov ebx, 42 ; exit status
    sub ebx, 29
    int 0x80    ; interrupt, processor transfer control to an interrupt 
                ; handler, 0x80 interrupt handler fo system call

                ; ./ex1, then echo $? should print 42