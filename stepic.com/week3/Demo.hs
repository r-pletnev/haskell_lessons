module Demo (unfoldr) where

unfoldr :: (b -> Maybe (a, b)) -> b -> [a]
unfoldr f ini = helper (f ini) where
  helper (Just (x, ini')) = x : unfoldr f ini'
  helper Nothing = []
