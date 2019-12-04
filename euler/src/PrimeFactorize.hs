module PrimeFactorize
  ( primeFactorize
  ) where

import DivisibleBy
import NextPrime

primeFactorize :: Integer -> [Integer]
primeFactorize n
  | n <  0    = [-1] ++ primeFactorize' (-n)
  | n == 0    = []
  | n == 1    = [1]
  | otherwise = primeFactorize' n

primeFactorize' :: Integer -> [Integer]
primeFactorize' = primeFactorize'' [] 2

primeFactorize'' :: [Integer] -> Integer -> Integer -> [Integer]
primeFactorize'' xs p n
  | n == p            = xs'
  | n `divisibleBy` p = primeFactorize'' xs' p (n `div` p)
  | otherwise         = primeFactorize'' xs (nextPrime p) n
  where
    xs' = p:xs
