.globl main

    .text

main:

    li $s0, 0x10000000 # Base memory pointer
    add $s1, $s0, $zero # Base memory addr of arr

    li $t0, 1
    sw $t0, 0($s1)
    li $t0, 2
    sw $t0, 4($s1)
    li $t0, 3
    sw $t0, 8($s1)
    li $t0, 4
    sw $t0, 12($s1)

    add $a0, $s1, $zero
    li $a1, 1
    jal swap

    li $v0 10
    syscall

swap:
    sll $t0, $a1, 2 # Convert k to array offset
    add $t0, $a0, $t0 # Get Addr of element k
    lw $t1, 0($t0) # Store v[k] in t1
    lw $t2, 4($t0) # Store v[k + 1] in t2
    sw $t1, 4($t0) # Save t1 in v[k + 1]
    sw $t2, 0($t0) # Save t2 in  v[k]

    jr $ra
