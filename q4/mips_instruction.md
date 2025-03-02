#  Provide the type, assembly language instruction, and binary representation of instruction described by the following MIPS fields:
## op=0x23, rs=1, rt=2, const=0x4

### Uses constant, so we can immediately tell it is going to be an I-type instruction but also proven by the op_code

#### reading from left to right
op_code = 0x23 --> Load Word (lw) which is immediate instruction format <sup>1</sup>
rt = 2 --> destination register has value 2 which corresponds to v0 (first function result register)
rs = 1 --> temporary assembler as the register
const = 0x4 --> (4 in hex is 4 in decimal, which is 0100 in binary)

### Overall --> lw $v0, 4($at) 

## Binary Encoding
1. (see op_code above for instruction format)
op_code is from 31-26 -> 6 bits
23 in hex is 2(16) + 3 --> 35
op_code -> 100011

rs is 25-21 -> 5 bits
rs (1) -> 00001

rt is 20-16 -> 5 bits
rt (2) -> 00010

Constant/Immediate is 15-0 -> 16 bits
Constant (0x4) -> 0000000000000100

### Overall binary 10001100001000100000000000000100
