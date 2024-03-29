module Problem7
  ( problem7
  ) where

import Prime

{-|
# 10001st prime
By listing the first six prime numbers:
  2, 3, 5, 7, 11, and 13,
we can see that the 6th prime is 13.

What is the 10001st prime number?
-}
problem7 :: Integer
problem7 = nthPrime 10001
