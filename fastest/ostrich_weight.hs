{-
A male ostrich weighs 20% more than a female one.
Given the gender of an ostrich, and its weight, display the weight of its counterpart.
If the gender is unknown, you should display "UNKNOWN".
Input
A single letter : 'F' for Female, 'M' for Male, any other char should be treated as unknown.
An integer W representing the ostrich weight.
Output
The weight of the opposite gender ostrich truncated.
Constraints
0 <= W < 200
Example
Input
F
100
Output
120
-}
data Gender = M | F | UNKNOWN

main :: IO ()
main = do
    gender <- readGender <$> getLine
    weight <- readLn
    case counterpart gender weight of
        Nothing -> putStrLn "UNKNOWN"
        Just x -> print x

readGender :: String -> Gender
readGender "M" = M
readGender "F" = F
readGender _ = UNKNOWN

counterpart :: RealFrac a => Gender -> a -> Maybe Int
counterpart UNKNOWN _ = Nothing
counterpart M x = Just $ round ((100 / 120) * x)
counterpart F x = Just $ round (1.2 * x)
