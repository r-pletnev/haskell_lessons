module SeqA where


seqA n =
    let 
        body a1 a2 a3 = (a3 + a2) - (2 * a1)
        helper n a1 a2 a3 | n == 0 = a1
                          | n > 0 = helper (n - 1) a2 a3 (body a1 a2 a3)

    in helper n 1 2 3