global _start
section .text
_start:
    ; write(1, message, 13)
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; fd: stdout
    mov rsi, message    ; pointer to string
    mov rdx, 13         ; length of string
    syscall

    ; exit(0)
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; status: 0
    syscall

section .data
message: db "Hello, World", 10

