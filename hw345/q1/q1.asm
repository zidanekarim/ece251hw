# no need for any .data since we are not using any constants
.text
.globl main
addi $t0 $s2 -5 #using $t0 since this h-5 is only temporarily needed for the next operation
add $s0 $s1 $t0