module Demo where

roots a b c = 
    let d = sqrt (b^2 - 4 * a * c) 
        znam =  (2 * a); 
        x1 = (-b - d) / znam 
        x2 = (-b + d) / znam
    in (x1, x2)