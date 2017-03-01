module Demo where

data Odd = Odd Integer deriving (Eq, Show)


instance Enum Odd where

  toEnum x | x `mod` 2 /= 0 = Odd ( toInteger  x)
           | otherwise = Odd ( toInteger (x+1))

  fromEnum (Odd x) = fromIntegral x

  --enumFrom x = map toEnum (filter (\x -> x `mod` 2 /= 0) [fromEnum x ..])
  --enumFromTo x y = map toEnum (filter (\x -> x `mod` 2 /= 0) [fromEnum x .. fromEnum y])
  enumFrom x = map toEnum (filter (\x -> x `mod` 2 /= 0) [ Odd x ..])

