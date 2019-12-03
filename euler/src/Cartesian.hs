module Cartesian
  ( cartesian
  ) where

cartesian :: (a -> b -> c) -> [a] -> [b] -> [c]
cartesian f xs ys = [f x y | x <- xs, y <- ys]
