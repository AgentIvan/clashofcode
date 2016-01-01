import Data.Char
main=interact(unlines.map(map toLower.show.a).tail.lines)
a d=l==r where s=sum.map digitToInt;l=s$take 3 d;r=s$drop 3 d
