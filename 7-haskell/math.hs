module Main where

    factorial :: Integer -> Integer
    factorial 0 = 1
    factorial x = x * factorial (x - 1)

    -- inefficient as doesn't use tail recursion
    fib :: Integer -> Integer
    fib 0 = 1
    fib 1 = 1
    fib x = fib (x - 1) + fib (x - 2)

    -- with tail recursion: way faster
    fibT :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
    fibT (x, y, 0) = (x, y, 0)
    fibT (x, y, index) = fibT(y, x + y, index - 1)

    fibResult :: (Integer, Integer, Integer) -> Integer
    fibResult (x, y, z) = x

    fastFib :: Integer -> Integer
    fastFib x = fibResult (fibT (0, 1, x))

    -- using function composition
    fibNextPair :: (Integer, Integer) -> (Integer, Integer)
    fibNextPair (x, y) = (y, x + y)

    fibNthPair :: Integer -> (Integer, Integer)
    fibNthPair 1 = (1, 1)
    fibNthPair n = fibNextPair (fibNthPair (n - 1))

    fibC :: Integer -> Integer
    fibC = fst . fibNthPair
