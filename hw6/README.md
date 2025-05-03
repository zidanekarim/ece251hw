Review textbook Chapter 3, specifically floating point.

#1 (textbook problem 3.23) <§3.5> Write down the binary representation of the decimal number 63.25 assuming the IEEE 754 single precision format.

#2 (textbook problem 3.24)  <§3.5> Write down the binary representation of the decimal number 63.25 assuming the IEEE 754 double precision format.


## Question 1

Sign Bit = 0 (positive)
Integer Portion -> 63 -> 111111
Fractional Portion = 0.25 * 2 = 0.5, 0.5 * 2= = 1, take integer parts
0.25 -> .01

Now, put together
111111.01 * 2^E

Use scientific notation -> 1.1111101 * 2^5


Sign is 1 bit -> 0
Exponent  is 127 + 5 = 132
132 in 8 bit binary
10000100
Fraction is 23 bits -> 1111 1010 0000 0000 0000 000
Final Answer: 0 10000100 11111010000000000000000 

## Question 2

Do the same thing as above but just some slight modifications 
1.1111101 * 2^5

Sign is still 1 bit -> 0 
Exponent Bias is 1023 so exponent is 1023 + 5 = 1028
1028 in 11-bit binary is 010 0000 0100
Fraction is the rest of it in (64-12) 52 bits -> 1111101 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0 

Putting it all together:
0010 0000 01001111101 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0 