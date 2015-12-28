{-
You program must output the smallest prime factor of N.
If N equals 0 or 1 you program must output NONE

Example :
15 = 3 * 5 , 3 and 5 are both prime and 3 is the smallest so the result is 3.

INPUT:
Line 1: An integer N

OUTPUT:
Line 1 : The smallest prime factor of N

CONSTRAINTS:
0 ≤ N ≤ 2000000

EXAMPLE:
Input
15
Output
3
-}
main=interact a
a s|s`elem`["0","1"]="NONE"|True=show.head.filter((==0).(x`rem`))$c where x=read s
c=s[2..]where s(p:s)=p:[x|x<-s,x`rem`p>0]
