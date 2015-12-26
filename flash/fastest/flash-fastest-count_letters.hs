import Data.Char

main = interact answer

answer = show . length . filter isAlpha
