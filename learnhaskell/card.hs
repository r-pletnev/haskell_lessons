module Card where

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x | x > 0 = toDigits (div x 10) ++ [mod x 10]
           | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs  = helper xs 0 where
      helper [] accum = []
      helper (y : ys) accum | even accum = y * y : helper ys (accum + 1)
                            | otherwise = y : helper ys (accum + 1)


sumDigits :: [Integer] -> Integer
sumDigits ys = sum $ sumDigits' ys where
      sumDigits' [] = []
      sumDigits' (x : xs) = toDigits x ++ sumDigits' xs



validate :: Integer -> Bool
validate x = 0 == (`mod` 10) (sumDigits  (doubleEveryOther (toDigitsRev x)))
