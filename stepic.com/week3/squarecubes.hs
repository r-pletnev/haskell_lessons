module Demo where


squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes [] = []
squares'n'cubes xs@(x:xs') = concatMap (\x -> [x*x, x*x*x]) xs


squares'n'cubes' [] = []
squares'n'cubes' xs@(x:xs') = (map (\ x -> x * x) xs) ++ (map (\ x -> x * x * x) xs)
