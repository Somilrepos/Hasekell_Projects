module ReverseString (reverseString) where

reverseString :: String -> String
reverseString (c:xs) = reverseString xs ++ [c]
reverseString []     = [] 
