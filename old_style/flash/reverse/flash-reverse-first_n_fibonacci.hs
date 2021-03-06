{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
0 1 1 2 3
02 Test 2
1
0
03 Test 3
2
0 1
04 Test 4
10
0 1 1 2 3 5 8 13 21 34
05 Test 5
47
0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 102334155 165580141 267914296 433494437 701408733 1134903170 1836311903
-}
main :: IO ()
main = readLn >>= putStrLn . unwords . map show . flip take fibs

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
