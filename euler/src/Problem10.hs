module Problem10
  ( problem10
  ) where

import Prime ( nextPrime )

{-|
# Summation of Primes
The sum of the primes below 10 is,
  2 + 3 + 5 + 7 = 17

Find the sum of all primes below two million.
-}
problem10 :: Integer
problem10 = sum . takeWhile (< 2000000) $ iterate nextPrime 2
