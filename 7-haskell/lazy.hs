module Main where

-- infinite sequence with lazy evaluation
lazyFib x y = x:(lazyFib y (x + y))
fib = lazyFib 1 1
fibNth n = head (drop (n - 1) (take n fib))
