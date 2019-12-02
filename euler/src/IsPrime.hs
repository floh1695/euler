module IsPrime
  ( isPrime
  ) where

import DivisibleBy

isPrime :: Integer -> Bool
isPrime = isPrime' 2

isPrime' :: Integer -> Integer -> Bool
isPrime' t n
  | n < 2             = False
  | n `elem` [2, 3]   = True
  | n == t            = True
  | n `divisibleBy` t = False
  | otherwise         = isPrime' t' n
  where
    t' = t + 1
