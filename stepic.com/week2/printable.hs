module Demo where

import Prelude


class Printable a where
    toString :: a -> [Char]
    show :: a -> [Char]


instance Printable Bool where
     toString True = "true"
     toString False = "false"


instance Printable () where
    toString () = "unit type" 


-- Добавляем в инстансы тип пары 

instance (Printable a, Printable b) => Printable (a, b) where
    toString p1 = "(" ++ (toString $ fst p1) ++ "," ++ (toString $ snd p1) ++ ")"   

instance Printable Int where
    show a | a > 100 = Prelude.show a ++ "."
           | otherwise = Prelude.show a