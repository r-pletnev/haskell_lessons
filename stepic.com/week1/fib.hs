module Fib where

{-fibonacci n | n == (-1) = 1
            | n == 0 = 0
            | n == 1 = 1
            | n > 1 = fibonacci (n - 1) + fibonacci (n - 2)
            | otherwise = fibonacci (n + 2) - fibonacci (n + 1)


fibonacciAccum  n = (helper [] (n - 1) fibonacciAccum) + (helper [] (n - 2) fibonacciAccum)

helper accumList n func | n == 0 = 0
                        | n == 1 = 1
                        | (length accumList) >= n = accumList !! ((length accumList) - n)
                        | otherwise = ((func n ): accumList) !! 0 -- Выполняем функцию > добавляем в лист > выплевываем это число
-}

fib2 n = helper1 n 0 1

helper1 n a b | n == 0 = a
              | n > 0 = helper1 (n-1) b (a + b) 
              | n < 0 = helper1 (n+1) b (a - b)


fib3 n = 
    let helper n a b | n == 0 = a
                     | n > 0 = helper (n-1) b (a + b)
    in helper n 0 1
