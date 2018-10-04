.globl main

    .text

main:

    li $a0, 12
    jal hof_F # hof_F(12)
    add $s0, $v0, $zero

    li $a0, 12
    jal hof_M # hof_M(12)
    add $s1, $v0, $zero

    li $v0 10
    syscall

hof_F:

    bgt $a0, $zero, hof_F_rec # Return 1 if n <= 0
    li $v0 1
    jr $ra

    hof_F_rec:
    addi $sp, $sp, -8 # Push to stack
    sw $ra, 4($sp) # Save return address
    sw $a0, 0($sp) # Save parameter m

    addi $a0, -1

    jal hof_F # hof_F(n - 1)
    add $a0, $v0, $zero
    jal hof_M # hof_M(hof_F(n - 1))

    lw $ra, 4($sp) # Restore return address
    lw $a0, 0($sp) # Restore parameter n
    addi $sp, $sp, 8 # Pop from stack

    sub $v0, $a0, $v0 # n - hof_M(hof_F(n - 1))
    jr $ra

hof_M:

    bgt $a0, $zero, hof_M_rec # Return 0 if n <= 0
    li $v0 0
    jr $ra

    hof_M_rec:
    addi $sp, $sp, -8 # Push to stack
    sw $ra, 4($sp) # Save return address
    sw $a0, 0($sp) # Save parameter m

    addi $a0, -1

    jal hof_M # hof_M(n - 1)
    add $a0, $v0, $zero
    jal hof_F # hof_F(hof_M(n - 1))

    lw $ra, 4($sp) # Restore return address
    lw $a0, 0($sp) # Restore parameter n
    addi $sp, $sp, 8 # Pop from stack

    sub $v0, $a0, $v0 # n - hof_F(hof_M(n - 1))
    jr $ra
