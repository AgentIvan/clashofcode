{-
It's Christmas !
Display a pretty tree depending on its height N given on standard input.
The tree is made of N + 1: N for its branches and a one for its trunk

To get your tree correctly centered, each stage of the tree must be composed of an odd number of stars.
Fill in the empty space with points.

INPUT:
Line 1: an integer N (number of stages of the tree).

OUTPUT:
N lines: the tree branches (as many lines as the tree height).
Last line: the tree trunk.

These lines must only be made of points and stars.

CONSTRAINTS:
1 ≤ N ≤ 20

EXAMPLE:
Input
4
Output
....*....
...***...
..*****..
.*******.
....*....
-}
main = do
    n <- readLn :: IO Int
    putStr $ unlines $ tree n

tree :: Int -> [String]
tree n = map (branch width) [1..n] ++ [branch width 1] where width = [1,3..] !! n

branch :: Int -> Int -> String
branch width k = s ++ replicate t '*' ++ s
 where
  s = replicate ((width - t) `div` 2) '.'
  t = [1,3..] !! (k- 1)
