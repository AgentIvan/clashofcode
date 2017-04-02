{-
Goal

Once upon a time the guy with well-known name Julius Caesar created a cipher, which later was called "Caesar Box".
The task is to help his nephew, Augustus in decoding this powerful cipher.
To decode the message, you have to do four steps:
1) Count the length of the given message
2) Determine how many rows you can divide the letters into equally (Number of columns will be equal to number of rows)
3) Write the letters out into the box(table) - put characters into rows of determined length
4) Start from the top left letter and read down to the bottom left letter, then start at the top of the next column and read down again, and so on

EXAMPLE FOR DECODING : 
I. Given a string "CiaonmdGe" (9 characters)

II.Divide it in equals rows and columns (here 3 rows, 3 columns):
Cia
onm
dGe

III. Print the concatenation of all the columns, from top do bottom, from left to right in one line :
"CodinGame" (C+o+d+i+n+G+a+m+e)

Good luck with decoding!
Input
A string with message. Minimum length of string ALWAYS is greater or equal than 4, the square root of number of characters in the message is an integer.
Output
Decoded message
Constraints
2*2 <= message length <= 20*20
Example
Input
CiaonmdGe
Output
CodinGame
-}
import Data.List.Split
main=interact s
s x=concatMap(\i->map(!!i) a)[0..length a-1]
 where a=chunksOf(floor$sqrt$fromIntegral$length x)x
