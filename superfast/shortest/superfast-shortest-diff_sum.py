"""
Your program must read two numbers and output the concatenation of their difference and sum.

INPUT:
Two positive integers A and B.

OUTPUT:
The concatenated results of A-B and A+B.

CONSTRAINTS:
A > 0
B > 0

EXAMPLE:
Input
6 4
Output
210
 

Download the files provided in the test script:
Test n°1: IN / OUT
Test n°3: IN / OUT
Test n°5: IN / OUT
Test n°7: IN / OUT
Test n°9: IN / OUT
"""
a,b=[int(i)for i in input().split()]
print(''.join(str(x)for x in [a-b,a+b]))
