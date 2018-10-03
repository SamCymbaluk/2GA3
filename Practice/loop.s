.globl main

    .text

main:
    # Load registers
    li $s0, 0
    li $s1, 45
    li $s2, 0

    LOOP:
      bge $s0, $s1, EXIT
      add $s2, $s2, $s1
      addi $s1, -1
      j LOOP
    EXIT:

    li $v0 10
    syscall
