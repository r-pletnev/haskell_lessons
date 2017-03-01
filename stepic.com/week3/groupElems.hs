module Demo where


groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems (x: xs) = helper2 x xs [] where
    a_plus_list a (z:zs) = if a == head z then ((a: z): zs) else ([a]: (z:zs))
    helper2 a [] [] = [[a]]
    helper2 a (b: bs) [] = reverse $helper2 b bs [[a]]
    helper2 a (b: bs) (z: zs) = helper2 b bs $ a_plus_list a (z:zs)
    helper2 a [] (z: zs) = a_plus_list a (z: zs)
