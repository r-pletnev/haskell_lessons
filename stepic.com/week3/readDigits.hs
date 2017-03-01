module Demo where

import Data.Char

readDigits :: String -> (String, String)
--readDigits "" = ("", "")
--readDigits (x: xs) = helper (x:xs) [] [] where
--  helper (a:as) (y:ys) (z:zs) 
--    | isDigit a = helper as (a: (y:ys)) (z:zs)
--    | otherwise = helper as (y:ys) (a : (z:zs))
--  helper _ (y:ys) (z:zs) = ((y:ys), (z:zs))
--  helper _ _ (z:zs) = ("", (z:zs))
--  helper _ (y:ys) _ = ((y:ys), "")
--  helper _ _ _ = ("", "")
--
readDigits "" = ("","")
readDigits xs@(x:xs') = (takeWhile isDigit xs, dropWhile isDigit xs)
--readDigits' xs@(x:xs') = (filter isDigit xs, filter isLetter xs)


