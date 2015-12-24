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
import Data.List.Split
main=interact a
a s=show$h*60+m where[h,m]=map read$splitOn":"s
