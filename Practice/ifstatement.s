.globl main

    .text

main:
    # Load registers
    li $s0, 15
    li $s1, 10

    bge $s0, $s1, ELSE  # if $s0 >= $s1 then
    add $s2, $s0, $zero
    j EXIT
    ELSE:
    add $s2, $s1, $zero
    addi $s0, 1
    EXIT:

    li $v0 10
    syscall
