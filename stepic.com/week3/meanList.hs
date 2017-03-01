module Demo where


--meanlist :: (Num a, Fractional a) => [a] -> a
meanlist :: [Double] -> Double
meanlist = (\(x,y)-> x / y ) . foldr (\ x (s, l) -> (x+s, 1+l)) (0, 0)
