module Sum where

import Data.Char

sum'n'count x | x > 0 = helper x 
              | x < 0 = helper (-x)
              | x == 0 = (0, 0)
    where 
        helper n = (sumD, lenD) where   
            listD = map digitToInt $ show n
            lenD = length listD
            sumD = sum listD   




sum' x | x == 0 = (0, 0) 
       | otherwise = helper (abs x)

    where
        helper n = (sumD, lenD) 
            where   
                listD = map (\x -> read [x] :: Int) (show n)
                lenD = length listD
                sumD = sum listD 

        --toDigits x
        --    | x < 10 = [x]
     -- otherwise = toDigits [div x 10] ++ [mod x 10]


sum'n'count'' x  = helper (abs x)
    where
        helper n = (sumD, lenD) 
            where   
                listD = map (\x -> read [x] :: Integer) (show n)
                lenD = toInteger(length listD)
                sumD = sum listD 