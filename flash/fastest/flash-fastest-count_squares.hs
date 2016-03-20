{-
Count the number of squares in an n × n grid.
*Square can be made out of smaller squares.
Input
Line 1: An integer N for the numbers of lines to read.
Next N lines: A representation of a row in the grid.
Output
The number of squares in the grid.
Constraints
n < 20
Example
Input
2
┌─┐
└─┘
Output
1
-}

-- NOTE: Work in progress! `numRows` and `numCols` still need work.

main :: IO ()
main = do
    _ <- getLine
    xss <- fmap lines getContents
    let rows = length xss
        cols = length (head xss)
    print $ numRows rows * numCols cols

numRows rows = rows - 2 + 1
numCols cols = (cols - 3) + 1

-- squares 2 3 = 1
-- swuares 3 5 = 5
-- squares 5 9 = 30
-- squares 8 15 = 140
