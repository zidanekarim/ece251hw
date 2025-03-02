## Suppose the program counter (PC) is set to 0x20000000.
### (a) <From Textbook §2.10>What range of addresses can be reached using the MIPS jump-and-link (jal) instruction? (In other words, what is the set of possible values for the PC after the jump instruction executes?)
jal adds 8 to the current program counter
the max value of a 26-bit program counter is 2^26-1 represented in hex which is 0x3FFFFFF
we must shift left two bits to account for word-to-byte conversions, which turns 
0x3FFFFFF into 0xFFFFFFC (our program counter can reach a max of 0xFFFFFFC from the initial jump)
if our current program counter is set at 0x20000000, and we use the MIPS green card which 
increments PC by 8 (2 words), PC+8 = 0x20000008. Our upper 4 bits of this are simply 0x2 (one digit in hex is 4 bits, or a nibble).

Combining our previous 0xFFFFFFC, our new max address is 0x2FFFFFFC. 

Final Answer: 0x20000000 to 0x2FFFFFFC


### (b) <From Textbook §2.10> What range of addresses can be reached using the MIPS branch if equal (beq) instruction? (In other words, what is the set of possible values for the PC after the branch instruction executes?)

beq is an immediate operation, in the format PC+4+BranchAddress. BranchAddress (immediate)
in I-type operations has a bit-width of 16 bits. However, addition is signed, so this max value is (2^15-1) which in hex is 0x7FFF. Shifting our bits left by 2 to account for word-to-byte, we get 0x1FFFC as a maximum. Doing the same for the negative end, we get 0xFFFE0000 as a minimum.
We can sign-extend the maximum to 0x0001FFFC to match the negative end.

So our current range is (0xFFFE0000, 0x0001FFFC)

if our current program counter is set at 0x20000000, and we use the MIPS green card which 
increments PC by 4 (1 word), PC+4 = 0x20000004. Our upper 4 bits of this are simply 0x2 (one digit in hex is 4 bits, or a nibble).

our lower 4 bits are 0x4

So, our max value combined with the upper nibble is 0x2001FFFC. 
Our minimum value combined with the lower nibble is 0xFFFE0004

Final Answer: 0x2001FFFC to 0xFFFE0004
