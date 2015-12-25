{-
Your program must reverse the positions of each word in the sentence given as input.

INPUT:
S, a string.

OUTPUT:
A string containing all the space-separated words of S in reverse order.

CONSTRAINTS:
S contains at least one word.
S contains less than 1000 characters.

EXAMPLE:
Input
Hello World
Output
World Hello
-}
import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    s <- getLine
    
    -- hPutStrLn stderr "Debug messages..."
    
    -- Write answer to stdout
    putStrLn $ unwords $ reverse $ words s
    return ()
