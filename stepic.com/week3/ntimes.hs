module Demo where

nTimes x n  =  helper []
	where
		helper acc  
			| n <= 0 = []
			| length acc < n = helper (x : acc)   
			| length acc == n = acc


		 