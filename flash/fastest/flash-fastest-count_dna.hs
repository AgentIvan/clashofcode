{-
The nucleotides inside a DNA sequence can be represented by a string composed by A, C, G and T. A sample string representing a DNA sequence is "ATGCTTCAGAAAAGGTCAGCG".

Your task is to count how many times the symbols A, C, G and T appear in the string s.

INPUT:
A single line, composed of A, C, G and T.

OUTPUT:
The number of times A, C, G and T appear in the string s, separated by a space.

CONSTRAINTS:
0 < len(s) < 1000

EXAMPLE:
Input
AACT
Output
2 1 0 1
-}
import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let s = input_line :: String
    
    -- hPutStrLn stderr "Debug messages..."
    
    -- Write answer to stdout
    putStrLn $ unwords $ answer s
    return ()

answer xs = [c 'A', c 'C', c 'G', c 'T']
  where
    c x = show $ length $ filter (== x) xs
