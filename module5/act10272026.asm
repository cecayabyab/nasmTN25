section .data
    line1   db "                    I", 0Ah
    len1    equ $ - line1

    line2   db "                  wrote", 0Ah
    len2    equ $ - line2

    line3   db "                 a poem", 0Ah
    len3    equ $ - line3

    line4   db "              in the shape", 0Ah
    len4    equ $ - line4

    line5   db "             of a Christmas", 0Ah
    len5    equ $ - line5

    line6   db "          tree but then forgot", 0Ah
    len6    equ $ - line6

    line7   db "       to water it and only a few", 0Ah
    len7    equ $ - line7

    line8   db "                  days", 0Ah
    len8    equ $ - line8

    line9   db "                  later", 0Ah
    len9    equ $ - line9

    line10  db "", 0Ah                  ;blank line
    len10   equ $ - line10

    line11  db "                 there", 0Ah
    len11   equ $ - line11

    line12  db "          were", 0Ah
    len12   equ $ - line12

    line13  db "                          words", 0Ah
    len13  equ $ - line13

    line14  db "  all", 0Ah
    len14   equ $ - line14

    line15  db "                      over", 0Ah
    len15   equ $ - line15

    line16  db "                                      carpet", 0Ah
    len16   equ $ - line16

    line17  db "       the", 0Ah
    len17   equ $ - line17

section .text
    global _start

%macro print_macro 2
    push    %2          
    push    %1          
    call    print_proc  
    add     esp, 8      
%endmacro

print_proc:
    push    ebp         
    mov     ebp, esp
    push    ebx         

    ; Setup system call for sys_write
    mov     eax, 4          
    mov     ebx, 1          
    mov     ecx, [ebp+8]    
    mov     edx, [ebp+12]   
    int     0x80            

    pop     ebx         
    mov     esp, ebp    
    pop     ebp
    ret                 

_start:
    print_macro line1, len1
    print_macro line2, len2
    print_macro line3, len3
    print_macro line4, len4
    print_macro line5, len5
    print_macro line6, len6
    print_macro line7, len7
    print_macro line8, len8
    print_macro line9, len9
    print_macro line10, len10
    print_macro line11, len11
    print_macro line12, len12
    print_macro line13, len13
    print_macro line14, len14
    print_macro line15, len15
    print_macro line16, len16
    print_macro line17, len17

    ;Exit the program
    mov     eax, 1      
    xor     ebx, ebx    
    int     0x80        