module Demo where


permute str = rotate str len len
  where len = length str

rotate _ _ 0 = []
rotate s 1 _ = [s]
rotate (y: ys) len len2 =
  map (\x -> y : x) (rotate ys (len-1) (len-1))
  ++
  rotate (ys ++ [y]) len (len2-1)

-- Не работает т.к. надо загружать delete 
permute' [] = [[]]
permute' xs@(x':xs') = concatMap (\x -> map (x:) $ permute' xs' ) xs
