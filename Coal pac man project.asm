include irvine32.inc

.data
msg1 db "Enter first number: $"
msg2 db "Enter second number: $"
msg3 db "GCD is: $"
num1 db 0
num2 db 0

.code
main:
    ; Display prompt for first number and take input
    mov edx, offset msg1
    call WriteString
    call TakeInput

    ; Display prompt for second number and take input
    mov edx, offset msg2
    call WriteString
    call TakeInput

    ; Call GCD procedure
    mov al, [num1]
    mov bl, [num2]
    call GCD

    ; Display result
    mov edx, offset msg3
    call WriteString
    call WriteInt

    ; Exit program
    exit

TakeInput proc
    ; Read user input and store it
    call ReadInt
    mov [num1], al
    ret
TakeInput endp

GCD proc
    ; Calculate the GCD using Euclidean algorithm
    gcd_loop:
        cmp al, bl
        je done
        jae greater
        xchg al, bl
    greater:
        sub al, bl
        jmp gcd_loop
    done:
        ret
GCD endp

end main
