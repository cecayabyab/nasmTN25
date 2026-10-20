; swap two numbers using push and pop
 
 
section .data   
    digit db '0', 10
 
section .text 
    global _start
 
_start:
 
    call push_pop

    mov eax, esi
    call display_digit

    mov eax, edi
    call display_digit

    mov eax,1
    xor ebx, ebx
    int 0x80
    
push_pop:
    push dword 3
    push dword 8
 
    pop eax        ;push 3
    pop ebx        ;push 8
 
    mov esi, eax    ; ESI = 8
    mov edi, ebx    ; EDI = 3
    
    ret

display_digit:
    add al, '0'
    mov [digit], al
 
    mov eax,4
    mov ebx,1
    mov ecx,digit
    mov edx,2
    int 0x80
 
    ret
