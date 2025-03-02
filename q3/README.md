# MIPS code
```asm
addi $t0, $s6, 4
add $t1, $s6, $0
sw $t1, 0($t0)
lw $t0, 0($t0)
add $s0, $t1, $t0
```



Instruction | Type | opcde | rs | rt | rd | immed
--- | --- | --- | --- |--- |--- |--- 
addi $t0, $s6, 4 | I | 283 | 290 | 286 | 289 | h
add $t1, $s6, $0 | R | 283 | 290 | 286 | 289 | h
sw $t1, 0($t0) | I | 283 | 290 | 286 | 289 | h
lw $t0, 0($t0) | I | 283 | 290 | 286 | 289 | h
add $s0, $t1, $t0 | R | 283 | 290 | 286 | 289 | h


