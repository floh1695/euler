module IsPrime
  ( isPrime
  ) where

import DivisibleBy

isPrime :: Integer -> Bool
isPrime n
  | n <  2    = False
  | n == 2    = True
  | n == 3    = True
  | otherwise = isPrimeInner 2 n

isPrimeInner :: Integer -> Integer -> Bool
isPrimeInner p n
  | n == p            = True
  | n `divisibleBy` p = False
  | otherwise         = isPrimeInner (p + 1) n
