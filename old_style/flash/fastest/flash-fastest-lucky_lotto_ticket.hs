{-
A ticket has a 6 digit number that goes from 000000 to 999999. It is a lucky ticket if the sum of the first three digits is equal to the sum of the last three digits.

You are given N ticket numbers. For each of them your program must output true if a given ticket number is lucky or false if not.

INPUT:
Line 1: A quantity of ticket numbers N.
Next N lines:A ticket number T, a string of 6 digits.

OUTPUT:
N lines: true if the current ticket is a lucky one, false otherwise.

CONSTRAINTS:
0 < N ≤ 10
T contains only digits (0-9)

EXAMPLE:
Input
4
123006
111222
000000
557766
Output
true
false
true
false
-}
import Data.Char

main = interact $ unlines . map (map toLower . show . isLucky) . tail . lines

isLucky xs = sum (map digitToInt left) == sum (map digitToInt right)
  where
    (left, right) = splitAt 3 xs
