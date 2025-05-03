# MIPS code
```asm
addi $t0, $s6, 4
add $t1, $s6, $0
sw $t1, 0($t0)
lw $t0, 0($t0)
add $s0, $t1, $t0
```


## Everything is in decimal
Instruction | Type | opcode | rs | rt | rd | immed | funct
--- | --- | --- | --- |--- |--- |--- |---
addi $t0, $s6, 4 | I | 8 | $s6 (22) | $t0 (8) | - | 4 | -
add $t1, $s6, $0 | R | 0 | $s6 (22) | $0 (0) | $t1 (9) | - | 32
sw $t1, 0($t0) | I | 43 | $t0 (8) | $t1 (9) | - | 0 | -
lw $t0, 0($t0) | I | 35 | $t0 (8) | $t0 (8)| - | 0 | -
add $s0, $t1, $t0 | R | 0 | $t1 (9) | $t0 (8)| $s0 (16) | - | 32


