Read textbook chapter 1 Section 1.6 for these problems:

#1 (textbook problem 1.5)
<§1.6> Consider three different processors P1, P2, and P3 executing the same instruction set. P1 has a 3 GHz clock rate and a CPI of 1.5. P2 has a 2.5 GHz clock rate and a CPI of 1.0. P3 has a 4.0 GHz clock rate and has a CPI of 2.2.
1.a. Which processor has the highest performance expressed in instructions per second?

We can get rid of the 10^9 unit since they are equivalent in all the clock rates
CPU times:
P1 2.2 / 3  
P2 1.0 / 2.5
P3 2.2 / 4.0

P2 is the lowest, so most instructions per second

1.b. If the processors each execute a program in 10 seconds, find the number of cycles and the number of instructions.
Instructions per second:

IPS for each
3.0 * 10 ^ 9 / 1.5 = 2 billion instructions/sec
2.5 * 10 ^ 9 / 1.0 = 2.5 billion instructions/sec
4.0 * 10 ^ 9 / 2.2  = 1.8 billion instructions/sec

P1 =  20 billion instructions
P2 = 25 billion instructions 
P3 = 18 billion instructions

Multiply by CPI to get clock cycles

P1 = 30 billion cycles
P2 = 25 billion cycles
P3 = 40 billion cycles

1.c. We are trying to reduce the execution time by 30% but this leads to an increase of 20% in the CPI. What clock rate should we have to get this time reduction?

Execution Time = Instructions * CPI / Clock Rate 
1.0T = I * 1.0CPI / Clock Rate Old
0.7T = I * 1.2CPI / Clock Rate New

0.7 * 1.0 / Clock Rate Old =  1.2 / Clock Rate New
Clock Rate New = 1.7 * Clock Rate Old


#2  (textbook problem 1.7)
<§1.6> Consider two different implementations of the same instruction set architecture. The instructions can be divided into four classes according to their CPI (class A, B, C, and D). P1 with a clock rate of 2.5 GHz and CPIs of 1, 2, 3, and 3, and P2 with a clock rate of 3 GHz and CPIs of 2, 2, 2, and 2.
Given a program with a dynamic instruction count of 1.0E6 instructions divided into classes as follows: 10% class A, 20% class B, 50% class C, and 20% class D, which is faster: P1 or P2?



2a. What is the global CPI for each implementation?
Weighed Sum P1 =0.1(1) + 0.2(2) + 0.5(3) + (0.2)3 = 2.6
Weighed Sum P2 = 2 



2b. Find the clock cycles required in both cases.

P1 = 1.0E6 * 2.6 = 2.6E6
P2 = 2.0E6

Overall Faster CPU ->
Execution Time P1 = 2.6E6 / 2.5 * 10^9
Execution Time P2 = 2.0E6 / 3.0 * 10^9, P2 is smaller so P2 is faster


#3 (textbook problem 1.12)
The results of the SPEC CPU2006 bzip2 benchmark running on an AMD Barcelona has an instruction count of 2.389E12, an execution time of 750 s, and a reference time of 9650 s.

3.a <§§1.6, 1.9> Find the CPI if the clock cycle time is 0.333 ns.

0.333 * 10^-9 S, clock rate = 1/0.333 * 10^-9, about 3 GHz
750s = 2.389E12 * CPI / 3*10^9, CPI = 0.94181665969 or 0.94

3.b <§§1.6, 1.9> Find the increase in CPU time if the number of instructions of the benchmark is increased by 10% without affecting the CPI.
825 seconds (solve for time while holding CPI at 0.94 and multiply instructions by 1.1)

3.c <§§1.6, 1.9> Find the increase in CPU time if the number of instructions of the benchmark is increased by 10% and the CPI is increased by 5%.
825 seconds * 1.05 = 866.25s


3.d <§1.6> Suppose that we are developing a new version of the AMD Barcelona processor with a 4 GHz clock rate. We have added some additional instructions to the instruction set in such a way that the number of instructions has been reduced by 15%. The execution time is reduced to 700 s and the new SPECratio is 13.7. Find the new CPI.

Execution Time = Instructions * CPI / Clock Rate 
700s * (4*10^9) /(0.85 * I ) = CPI
CPI = 1.38