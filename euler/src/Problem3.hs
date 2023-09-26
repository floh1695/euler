module Problem3
  ( problem3
  ) where

import Prime

{-|
# Largest prime factor
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}
problem3 :: Integer
problem3 = maximum factors
  where
    number   = 600851475143
    factors  = factorize number
