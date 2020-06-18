import Data.Char

spell :: Integer -> String
spell int = 
    case int of
        1 -> "one"
        2 -> "two"
        3 -> "three"
        4 -> "four"
        _ -> "Default"´

idx :: (Num a, Ord a) => a -> a
idx x = if x < 10 then negate x else x + 10 
    
idk :: (Num a, Ord a) => a -> a
idk x =
    if x < 10 then negate x else x + 10

preferJ :: String -> String -> String
preferJ x y = if 'j' `elem` x then x else y


rejectNonalphabetic :: String -> Maybe String
rejectNonalphabetic string =
    if myAll isAlpha string then Just string else Nothing

myAll :: (a -> Bool) -> [a] -> Bool
myAll pred = foldr (\x y -> pred x && y) True   