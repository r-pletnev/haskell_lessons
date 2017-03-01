module Demo where


evenOnly :: [a] -> [a]
evenOnly = fst . foldr (\ x (result, l) ->
                        if even l
                           then (([x] ++ result), 1 + l)
                        else (result, 1 + l) ) ([], 0)
