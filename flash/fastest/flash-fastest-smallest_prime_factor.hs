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
import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let n = read input_line :: Int
    
    -- hPutStrLn stderr "Debug messages..."
    
    -- Write answer to stdout
    putStrLn $ answer n

answer 0 = "NONE"
answer 1 = "NONE"
answer n = show $ head $ filter ((== 0) . (n `mod`)) primes

primes = 2 : sieve [3,5..] where sieve (p:xs) = p : [x | x <- xs, x `mod` p > 0]
