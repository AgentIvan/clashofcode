{-
Your program must write the number of minutes or the duration formatted as hh:mm.

INPUT:
Line 1: a string duration formatted as hh:mm.

OUTPUT:
Line 1: the number of minutes.

EXAMPLE:
Input
13:05
Output
785
-}
main=interact$show.d
d[a,b,':',d,e]=(read[a,b])*60+(read[d,e])
