module First where

  contrario :: [a] -> [a]
  contrario [] = []
  contrario (h:t) = contrario t ++ [h]

  combineColors = [(c1,c2) | c1 <- colors, c2 <- colors, c1 < c2 || c1 == c2]
    where colors = ["black","white","blue","yellow","red"]
