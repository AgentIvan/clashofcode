{-
The Syracuse (or Collatz) suite is defined as follows: given an initial integer greater than 0, we apply the following operations while the integer is different that 1:
- it is divided by 2 when even,
- it is multiplied by 3 and raised by 1 when odd.

Your program must display the Syracuse suite of the number N and stop when the value 1 is reached.

INPUT:
Line 1: An integer N that starts the suite.

OUTPUT:
Line 1: The values of the Syracuse suite, separated by a space.

CONSTRAINTS:
1 ≤ N < 100

EXAMPLE:
Input
5
Output
5 16 8 4 2 1
-}
main :: IO ()
main = do
    n <- readLn :: IO Int
    putStrLn $ unwords $ map show $ collatz n

collatz 1 = [1]
collatz x = x : collatz x'
  where
    x'  
      | even x    = x `div` 2
      | otherwise = x * 3 + 1
