{-
Your program must display the missing digit for each line.

INPUT:
Line 1 : An integer N, the number of lines to read.
N next lines : A string line of 9 digits without spaces.

OUTPUT:
Line 1 : The missing digit.

CONSTRAINTS:
0 < N < 1000

EXAMPLE:
Input
1
123456789
Output
0
-}
import System.IO
import Control.Monad
import Data.List (sort)
import Data.Char (digitToInt)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let n = read input_line :: Int
    
    replicateM_ n $ do
        input_line <- getLine
        print $ answer input_line

answer :: String -> Int
answer input_line = missingDigit xs
  where
    xs :: [Int]
    xs = map digitToInt input_line

missingDigit :: [Int] -> Int
missingDigit xs
    | 9 `elem` xs = fst . head . filter (\(a, b) -> a /= b) $ zip [0..9] (sort xs)
    | otherwise = 9
