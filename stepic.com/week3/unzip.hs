module Demo where

import Data.List (transpose)

unzip' :: [(a,b)] -> ([a],[b])

unzip' [] = ([], [])
unzip' ((x,y): xys) = (x:xs, y:ys) 
    where
        (xs, ys) = unzip xys

--sum3 :: [a] -> [a] -> [a]

sum3 (a:as) (b:bs) (c:cs) = a + b + c : sum3 as bs cs
sum3 (a:as) (b:bs) _ = a + b : sum3 as bs []
sum3 (a:as) _ (c:cs) = a + c : sum3 as [] cs
sum3 _ (b:bs) (c:cs) = b + c : sum3 [] bs cs
sum3 (a:as) _ _ = a : sum3 as [] []
sum3 _ (b:bs) _ = b : sum3 [] bs []
sum3 _ _ (c:cs) = c : sum3 [] [] cs
sum3 _ _ _ = []


sum3' as bs cs = map sum $transpose [as, bs, cs]