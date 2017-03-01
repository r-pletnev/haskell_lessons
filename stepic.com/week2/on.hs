module Demo where

on3 op f x y z = op (f x) (f y) (f z)

doItYourself = f . g . h

f = logBase 2

g = (^3) -- point free notation

h = max 42