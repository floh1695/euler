module IsPrime
  ( isPrime
  ) where

import DivisibleBy

isPrime :: Integer -> Bool
isPrime n
  | n <  2    = False
  | n == 2    = True
  | n == 3    = True
  | otherwise = isPrime' 2 n

isPrime' :: Integer -> Integer -> Bool
isPrime' p n
  | n == p            = True
  | n `divisibleBy` p = False
  | otherwise         = isPrime' (p + 1) n
