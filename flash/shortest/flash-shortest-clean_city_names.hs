import Control.Monad
import Data.Char
import Data.Maybe
main = do
 n<-readLn::IO Int
 s <- replicateM n $ do
  real <- getLine
  let c=e real
  return (c,real)
 xs <- getContents
 putStr$unlines$map(fromJust.(\x->lookup (e x) s))$tail$lines xs
e=map toLower.filter isAlpha
