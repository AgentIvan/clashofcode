{-
Goal

It's almost the Winter Sales !
Most of the times, people go to the mall to buy some gifts for their friends, or even for themselves because shops are giving interesting discounts on some products.

The shop Admaritan give the possibility to refund S% on the most expensive item of the purchase.
Calculate the final purchase amount.

Note: If the final purchase amount is a float number, round up to the next integer.
Input
Line 1: An integer S, a refunding percentage
Line 2: An integer P, a number of prices
P next lines: Line by line, a price as an integer
Output
The final purchase amount
Constraints
0 <= S <= 100
0 < P <= 1000
Example
Input
20
3
100
400
200
Output
620
-}

main=do
s:_:x<-map read.words<$>getContents
print.ceiling$sum x-maximum x*s/100
