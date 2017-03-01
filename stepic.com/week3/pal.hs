module Demo where

isPalindrome [] = error "Error! List is empty" 
isPalindrome [x] = True
isPalindrome (x : xs) = reverse (x: xs) == x : xs