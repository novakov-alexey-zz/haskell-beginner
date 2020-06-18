module Pal where
import Data.Char

isPalindrome :: String -> Maybe Bool
isPalindrome phrase =
    isOwnReverseMaybe (rejectEmpty (normalize phrase))

rejectEmpty :: String -> Maybe String
rejectEmpty word = 
    case word of
        [] -> Nothing
        _ -> Just word

normalize :: String -> String
normalize string = 
    filter notPunctuation(filter notSpace (allLowerCase string))

isOwnReverseMaybe :: Maybe String -> Maybe Bool
isOwnReverseMaybe maybeString =
    case maybeString of 
        Nothing -> Nothing
        Just string -> Just (isOwnReverse string)

isOwnReverse :: String -> Bool
isOwnReverse word =
    word == reverse word

notSpace :: Char -> Bool
notSpace x = x /= ' '

notPunctuation :: Char -> Bool
notPunctuation x = not (isPunctuation x)

allLowerCase :: String -> String
allLowerCase = map toLower