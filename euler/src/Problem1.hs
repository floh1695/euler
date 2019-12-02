module Problem1
  ( problem1
  ) where

import DivisibleBy

{-
# Multiples of 3 and 5
If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
-}
problem1 :: Integer
problem1 = solution
  where
    baseNumbers     = [1..999]
    predicate n     = n `divisibleBy` 3 || n `divisibleBy` 5
    selectedNumbers = filter predicate baseNumbers
    solution        = sum selectedNumbers
