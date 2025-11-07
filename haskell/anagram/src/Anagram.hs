module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

isAmagram :: String -> String -> Bool
isAmagram x ana = sort (str1) == sort (str2) && str1 /= str2
    where 
        str1 = (map toLower x)
        str2 = (map toLower ana)

anagramsFor :: String -> [String] -> [String]
anagramsFor _ [] = []
anagramsFor xs xss = filter (isAmagram xs) xss