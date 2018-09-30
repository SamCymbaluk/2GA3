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
    # Question 1.3c #
    #################
    lui $t0, 0xFEDC # INSTRUCTION 1
    ori $t0, 0xBA98 # INSTRUCTION 2
    sw $t0, 0($s0) # INSTRUCTION 3
    sw $t0, 0x14($s0) # INSTRUCTION 4
    sw $t0, 0xA($s0) # INSTRUCTION 5

    li $v0 10
    syscall
