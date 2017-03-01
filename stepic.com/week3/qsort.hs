module Demo where

qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort xs@(x:xs') = qsort(filter (< x) xs) ++ [x] ++ qsort (filter (> x) xs)

qsort' [] = []
qsort' xs@(x:xs') = qsort'(filter (< x) xs) ++ qsort (filter (>= x) xs)

qsort'' [] = []
qsort'' xs@(x:xs') = qsort''(filter (< x) xs) ++ filter (== x) xs ++ qsort'' (filter (> x) xs)
