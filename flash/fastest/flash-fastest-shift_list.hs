{-
Your program must output the input word after shifting its letters. Letters whose index would be negative are placed at the end of the word. The shift amount can be greater than the length of the word, in that case it loops.

INPUT:
Line 1: The number N of shift to the left to apply.
Line 2: The word word you must shift.

OUTPUT:
Line 1: The shifted word.

CONSTRAINTS:
0 < N < 10

EXAMPLE:
Input
5
breakfast
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
    word <- getLine
    
    -- hPutStrLn stderr "Debug messages..."
    
    -- Write answer to stdout
    putStrLn $ shift n word

shift :: Int -> String -> String
shift n xs = take (length xs) $ drop n $ cycle xs
