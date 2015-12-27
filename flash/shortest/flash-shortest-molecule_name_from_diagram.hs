import Data.Maybe

main :: IO ()
main = do
    _ <- getLine
    xs <- getContents
    putStrLn $ identify xs

identify xs = fromMaybe "NONE" $ lookup (c, h) names
  where
    c = length $ filter (== 'C') xs
    h = length $ filter (== 'H') xs

names = [ ((1, 4), "methane")
        , ((2, 6), "ethane")
        , ((3, 8), "propane")
        , ((4, 10), "butane")
        , ((5, 12), "pentane")]
