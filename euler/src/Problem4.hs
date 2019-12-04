module Problem4
  ( problem4
  ) where

import Cartesian
import IsPalindrone

{-
# Largest palindrome product
A palindromic number reads the same both ways.
The largest palindrome made from the product
  of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
-}
problem4 :: Integer
problem4 = maximum palindrones
  where
    products     = reverse [100..999]
    combinations = cartesian (*) products products
    palindrones  = filter isPalindrone combinations
