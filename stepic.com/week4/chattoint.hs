module Demo where


charToInt :: Char -> Int
charToInt x | fromEnum x >= 48 && fromEnum x <= 57 = fromEnum x - 48
