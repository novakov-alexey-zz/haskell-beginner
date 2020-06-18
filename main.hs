import Pal (isPalindrome)
-- The interactive program -- 

main :: IO ()
main = 
    do
        word <- getLine
        print(verbose word)

verbose :: String -> String
verbose word = 
    case isPalindrome word of
        Nothing -> "This is empty string"
        Just True -> "This is polindrome!"
        Just False -> "This is not polindrome"

-- What a palindrome is --