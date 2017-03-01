module Person where


data Person = Person { 
                     firstName :: String,
                     lastName :: String,
                     age :: Int}
                     deriving (Show, Eq)


abbrFirstName :: Person -> Person
abbrFirstName p = if (length $ firstName p) < 2 
                     then p {firstName = firstName p}
                     else p {firstName = (head $ firstName p) : "."}
