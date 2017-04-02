{-
 	Goal

Given a string, you must convert each character - using its ASCII code - in 8 bit long binary numbers and concatenate them from left to right.
Then you must sum bits whose indices are in the Fibonacci sequence (but do not include the same bit twice in this sum!).
The left-most bit of that binary sequence is considered to have index 0.
Input
Line 1: A string String (composed of uppercase and lowercase English letters, spaces and punctuation).
Output
Line 1: A number N for sum of bits.
Constraints
2 ≤ len(String) ≤ 1000
Example
Input
testcase
Output
7
-}

import Data.Char (digitToInt, intToDigit, ord)
import Numeric (showHex, showIntAtBase)

main :: IO ()
main = getLine >>= print . solution

solution :: String -> Int
solution = sum . map digitToInt . fibOnly . binaryString

binaryString :: String -> String
binaryString = concatMap toBinary . map ord

toBinary :: Int -> String
toBinary x = pad '0' 8 $ showIntAtBase 2 intToDigit x ""

pad :: Char -> Int -> String -> String
pad c n xs = replicate (length xs - n) c ++ xs

fibOnly :: String -> String
fibOnly xs = map (xs !!) $ takeWhile (< length xs) (0 : tail fibs)

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
