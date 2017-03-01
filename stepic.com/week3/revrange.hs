module Demo2 where

unfoldr :: (b -> Maybe (a, b)) -> b -> [a]
unfoldr f ini = helper (f ini) where
  helper (Just (x, ini')) = x : unfoldr f ini'
  helper Nothing = []


revRange:: (Char, Char) -> [Char]
revRange (a, z) = unfoldr g where
    g x = if x >= a && x <= z then Just(x, revRange (succ x) z) else Nothing
