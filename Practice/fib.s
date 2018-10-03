.globl main

    .text

main:

    li $a0, 5
    jal fib # fib(5)
    add $s0, $v0, $zero

    li $a0, 8
    jal fib # fib(8)
    add $s1, $v0, $zero

    add $s2, $s0, $s1 # fib(5) + fib(8)

    li $v0 10
    syscall

fib:
    li $t0, 1
    bgt $a0, $t0, fibr # If n <= 1: return 1
    li $v0, 1
    jr $ra # Return

    fibr:
    addi $sp, $sp, -12 # Make room for ra, a0 (n), and fact value
    sw $ra, 8($sp) # Store ra in stack frame

    addi $a0, -1
    sw $a0, 4($sp) # Save a0 (n) before calling fib
    jal fib # fib(n - 1)
    add $t0, $v0, $zero # Store return of first fib call in $t0

    sw $t0 0($sp) # Store t0 in stack frame
    lw $a0, 4($sp) # Load a0 (n)
    addi $a0, -1,
    jal fib # fib(n - 2)
    lw $t0 0($sp) # Load t0 from stack frame
    add $v0, $t0, $v0 # Store sum of fact results in return register

    lw $ra 8($sp) # Load ra from stack frame
    addi $sp, $sp, 12 # Restore stack pointer
    jr $ra # Return
