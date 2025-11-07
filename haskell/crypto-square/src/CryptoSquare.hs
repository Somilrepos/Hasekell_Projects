module CryptoSquare (encode) where
import Data.Char



encode :: String -> String
encode [] = []
encode (x:xs)  
    | isSpace x = encode xs
    | otherwise = [y] ++ encode xs
    where y = toLower x