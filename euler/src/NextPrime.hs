module NextPrime
  ( nextPrime
  ) where

import IsPrime

nextPrime :: Integer -> Integer
nextPrime p
  | isPrime p' = p'
  | otherwise  = nextPrime p'
  where
    p' = p + 1
