# Instructions
Translating this code from MIPS assembly to c
addi $t0, $s6, 4
add $t1, $s6, $0
sw $t1, 0($t0)
lw $t0, 0($t0)
add $s0, $t1, $t0

Assume that the variables f, g, h, i, and j are assigned to registers 
$s0, $s1, $s2, $s3, and $s4, respectively. 
Assume that the base address of the arrays A and B are in registers $s6 and $s7, respectively.



# Code
```c
int main() {
    // only $s0 and $s6 are used 
    int f; // $s0
    int A[10]; // $s6
    // addi $t0, $s6, 4
    // A is the base address of the array A, so adding 4 to it will give the address of A[1]
    int* t0 = A + 1;
    // add $t1, $s6, $0
    int* t1 = A + 0;
    // sw $t1, 0($t0)
    *t0 = *t1; // sw is backwards with immediate first and register second
    // lw $t0, 0($t0)
    t0 = t0 + 0;
     // add $s0, $t1, $t0
    f = *t0 + *t1;
}
```
## This needs to be propagated with some values for functionality