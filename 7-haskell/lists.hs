module Main where

allEven :: [Integer] -> [Integer]
allEven [] = []
allEven (h:t) = if even h then h:allEven t else allEven t

-- self study day 1:
allEven1 :: [Integer] -> [Integer]
allEven1 list = [ n | n <- list, (mod n 2) == 0]

-- rev :: [Integer] -> [Integer]
rev (h:t) = (reverse t) ++ [h]


getColors = 
    let 
        colors = ["black","white","blue","yellow","red"]
    in
        [ (c1, c2) | c1 <- colors, c2 <- colors, c1 < c2]

doMult =  [ (x, y, x * y) | x <- [0..12], y <- [0..12]]

