
section .data
    menu db "------------------------------", 10
         db "MENU", 10
         db "[A]dd", 10
         db "[S]ubtract", 10
         db "[M]ultiply", 10
         db "[D]ivide", 10
         db "------------------------------", 10
    menuLen equ $ - menu

    askChoice db "Enter your choice: "
    askChoiceLen equ $ - askChoice

    askFirst db "Enter first number (0-99): "
    askFirstLen equ $ - askFirst

    askSecond db "Enter second number (0-99): "
    askSecondLen equ $ - askSecond

    askAgain db "Do you want to try again (Y/N)? "
    askAgainLen equ $ - askAgain

    sumMsg db "The sum is "
    sumLen equ $ - sumMsg

    subMsg db "The difference is "
    subLen equ $ - subMsg

    mulMsg db "The product is "
    mulLen equ $ - mulMsg

    divMsg db "The quotient is "
    divLen equ $ - divMsg

    zeroMsg db "Cannot divide by zero!", 10
    zeroLen equ $ - zeroMsg

    errorMsg db "The value entered isn't correct!", 10
    errorLen equ $ - errorMsg

    newline db 10

    minusSign db "-"

    clearCode db 27, "[2J", 27, "[H"
    clearLen equ $ - clearCode

section .bss
    choice resb 4
    again resb 4
    num1Text resb 4
    num2Text resb 4
    num1 resd 1
    num2 resd 1
    result resd 1
    digits resb 12

section .text
global _start

_start:

menuLoop:
    call clearTheScreen
    call showMenu

    ; Ask for menu choice
    mov eax, 4
    mov ebx, 1
    mov ecx, askChoice
    mov edx, askChoiceLen
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, choice
    mov edx, 4
    int 80h

    ; Check the menu choice
    mov al, [choice]

    cmp al, 'A'
    je validChoice
    cmp al, 'a'
    je validChoice

    cmp al, 'S'
    je validChoice
    cmp al, 's'
    je validChoice

    cmp al, 'M'
    je validChoice
    cmp al, 'm'
    je validChoice

    cmp al, 'D'
    je validChoice
    cmp al, 'd'
    je validChoice

    ; Invalid choice
    mov eax, 4
    mov ebx, 1
    mov ecx, errorMsg
    mov edx, errorLen
    int 80h

    jmp menuLoop

validChoice:

    ; Ask for first number
    mov eax, 4
    mov ebx, 1
    mov ecx, askFirst
    mov edx, askFirstLen
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, num1Text
    mov edx, 4
    int 80h

    mov esi, num1Text
    call convertInput
    mov [num1], eax

    ; Ask for second number
    mov eax, 4
    mov ebx, 1
    mov ecx, askSecond
    mov edx, askSecondLen
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, num2Text
    mov edx, 4
    int 80h

    mov esi, num2Text
    call convertInput
    mov [num2], eax

    ; Perform selected operation
    mov al, [choice]

    cmp al, 'A'
    je addition
    cmp al, 'a'
    je addition

    cmp al, 'S'
    je subtraction
    cmp al, 's'
    je subtraction

    cmp al, 'M'
    je multiplication
    cmp al, 'm'
    je multiplication

    cmp al, 'D'
    je division
    cmp al, 'd'
    je division

addition:
    mov eax, [num1]
    add eax, [num2]
    mov [result], eax

    mov ecx, sumMsg
    mov edx, sumLen
    call printMessage
    jmp printResult

subtraction:
    mov eax, [num1]
    sub eax, [num2]
    mov [result], eax

    mov ecx, subMsg
    mov edx, subLen
    call printMessage
    jmp printResult

multiplication:
    mov eax, [num1]
    imul eax, [num2]
    mov [result], eax

    mov ecx, mulMsg
    mov edx, mulLen
    call printMessage
    jmp printResult

division:
    cmp dword [num2], 0
    je divisionError

    mov eax, [num1]
    cdq
    idiv dword [num2]
    mov [result], eax

    mov ecx, divMsg
    mov edx, divLen
    call printMessage
    jmp printResult

divisionError:
    mov eax, 4
    mov ebx, 1
    mov ecx, zeroMsg
    mov edx, zeroLen
    int 80h
    jmp retry

printResult:
    mov eax, [result]
    call printNumber
    call printNewline
    jmp retry

retry:
    mov eax, 4
    mov ebx, 1
    mov ecx, askAgain
    mov edx, askAgainLen
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, again
    mov edx, 4
    int 80h

    mov al, [again]
    cmp al, 'Y'
    je menuLoop
    cmp al, 'y'
    je menuLoop

    ; Terminate program
    mov eax, 1
    mov ebx, 0
    int 80h

; Clear the screen
clearTheScreen:
    mov eax, 4
    mov ebx, 1
    mov ecx, clearCode
    mov edx, clearLen
    int 80h
    ret

; Display the menu
showMenu:
    mov eax, 4
    mov ebx, 1
    mov ecx, menu
    mov edx, menuLen
    int 80h
    ret

; Convert input text into a number
convertInput:
    xor eax, eax

    mov bl, [esi]
    cmp bl, 10
    je convertDone
    cmp bl, 13
    je convertDone

    sub bl, '0'
    movzx eax, bl

    mov bl, [esi+1]
    cmp bl, 10
    je convertDone
    cmp bl, 13
    je convertDone

    imul eax, 10
    sub bl, '0'
    movzx ebx, bl
    add eax, ebx

convertDone:
    ret

; Print a message
printMessage:
    mov eax, 4
    mov ebx, 1
    int 80h
    ret

; Print the result, including multiple digits
printNumber:
    mov edi, digits
    add edi, 11
    mov byte [edi], 10
    mov ebx, 10
    xor ecx, ecx

    cmp eax, 0
    jge numberPositive

    neg eax
    push eax

    mov eax, 4
    mov ebx, 1
    mov ecx, minusSign
    mov edx, 1
    int 80h

    pop eax
    mov ebx, 10

numberPositive:
    xor edx, edx
    div ebx

    add dl, '0'
    dec edi
    mov [edi], dl
    inc ecx

    test eax, eax
    jnz numberPositive

    mov eax, 4
    mov ebx, 1
    mov edx, ecx
    mov ecx, edi
    int 80h
    ret

; Print a new line
printNewline:
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 80h
    ret
