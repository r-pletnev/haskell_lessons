module Demo1 where

infixl 6 |-|

-- (|-|) a b = if (a - b) > 0 then (a - b) else (-(a - b))
a |-| b = abs(a - b)
