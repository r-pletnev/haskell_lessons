module Demo where

import Data.Char

delAllUpper = unwords . filter (any isLower) . words 

