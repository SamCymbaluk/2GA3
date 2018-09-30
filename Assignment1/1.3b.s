.globl main

    .text

main:
    # Load registers
    li $a0, 0x190
    li $a1, 0x3E7
    li $t0, 0x1234567
    li $t1, 0x89ABCDEF
    li $s0, 0x10000000
    li $s1, 0x251F326D

    #Load memory
    sw $t0, 0x8($s0)
    sw $t1, 0xC($s0)

    #################
    # Question 1.3b #
    #################
    addi $s1, $s0, 0x8  # INSTRUCTION 1
    lw $t0, 0($s0) # INSTRUCTION 2
    addi $s1, $s0, 0x4 # INSTRUCTION 3
    lw $t1, 0($s0) # INSTRUCTION 4
    add $t0, $t0, $t1 # INSTRUCTION 5
    addi $s1, $s0, 0x4 # INSTRUCTION 6
    lw $t1, 0($s0) # INSTRUCTION 7
    add $t0, $t0, $t1 # INSTRUCTION 8

    li $v0 10
    syscall
