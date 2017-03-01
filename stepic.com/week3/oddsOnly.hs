module Demo where

oddsOnly [] = []
oddsOnly (x:xs) = if odd x then x : oddsOnly xs else oddsOnly xs

oddsOnly' [] = []
oddsOnly' lst = filter odd lst 