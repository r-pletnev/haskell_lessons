module Area where

data Shape = Circle Double | Rectangle Double Double deriving Show


area :: Shape -> Double
area (Circle r) = r ^ 2 * pi

area (Rectangle a b) = a * b
