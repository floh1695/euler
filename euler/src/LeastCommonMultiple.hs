module LeastCommonMultiple
  ( leastCommonMultiple
  ) where

leastCommonMultiple :: Integral a => a -> a -> a
leastCommonMultiple a b = (a * b) `div` (gcd a b)
