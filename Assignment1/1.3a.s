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
    # Question 1.3a #
    #################
    lw $t0, 0x8($s0) # INSTUCTION 1
    lw $t1, 0xC($s0) # INSTUCTION 2
    add $t0, $t0, $t1 # INSTUCTION 3
    lw $t1, 0x10($s0) # INSTUCTION 4
    add $t0, $t0, $t1 # INSTUCTION 5

    li $v0 10
    syscall
