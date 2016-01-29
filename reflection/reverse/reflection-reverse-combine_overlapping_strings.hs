{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
56021
1990560
199056021
02 Test 2
123
34
1234
03 Test 3
123
2345
12345
04 Test 4
6123
5612365
5612365
05 Test 5
89561260
10008956
100089561260
06 Test 6
9810405236
52360
98104052360
07 Test 7
123456
789
123456789-}
import Data.List

main = interact $ magic . lines

magic :: [String] -> String
magic [a, []] = a
magic [[], b] = b
magic [a, b]
    | isSubsequenceOf a b = a
    | otherwise = [head a] ++ 

isSubsequenceOf x y = elem x (subsequences y)



magic :: [String] -> String
magic [a, b]
    | length a' <= length b' = a'
    | otherwise = b'
  where
    a' = foo [a, b]
    b' = foo [b, a]

foo [a, b] = a ++ drop (length overlap) b
  where
    overlap = last . filter (`isSuffixOf` a) $ inits b
