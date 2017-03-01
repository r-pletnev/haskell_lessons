module My_map where

my_map f l | l == [] = []
		   | otherwise = helper f l
		   where
		   		helper f (x:xs) = (f x) : helper f xs 



mult a b | a == 0 = 0
		 | b == 0 = 0
		 | otherwise = 
		 	let
		 		req = a + mult a (b - 1)
		 	in (if a > 0 then req else (-req))
