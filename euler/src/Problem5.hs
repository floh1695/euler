module Problem5
  ( problem5
  ) where

import LeastCommonMultiple

{-
# Smallest multiple
2520 is the smallest number that can be divided by 
  each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is 
  evenly divisible by all of the numbers from 1 to 20?
-}
problem5 :: Integer
problem5 = foldr leastCommonMultiple 1 [1..20]
