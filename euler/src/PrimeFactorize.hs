module PrimeFactorize
  ( primeFactorize
  ) where

import DivisibleBy
import NextPrime

primeFactorize :: Integer -> [Integer]
primeFactorize n
  | n <  0    = [-1] ++ primeFactorizeInnerStart (-n)
  | n == 0    = []
  | n == 1    = [1]
  | otherwise = primeFactorizeInnerStart n

primeFactorizeInnerStart :: Integer -> [Integer]
primeFactorizeInnerStart = primeFactorizeInner [] 2

primeFactorizeInner :: [Integer] -> Integer -> Integer -> [Integer]
primeFactorizeInner xs p n
  | n == p            = (p:xs)
  | n `divisibleBy` p = primeFactorizeInner (p:xs) p (n `div` p)
  | otherwise         = primeFactorizeInner xs (nextPrime p) n
