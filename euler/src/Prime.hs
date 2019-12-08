module Prime
  ( isPrime
  , nextPrime
  , nthPrime
  , factorize
  ) where

import Math


isPrime :: Integer -> Bool
isPrime = isPrime' 2

isPrime' :: Integer -> Integer -> Bool
isPrime' t n
  | n < 2             = False
  | n `elem` [2, 3]   = True
  | t > maxTest n     = True
  | n == t            = True
  | n `divisibleBy` t = False
  | otherwise         = isPrime' t' n
  where
    t'      = t + 1
    maxTest = ceiling . sqrt . fromInteger


nextPrime :: Integer -> Integer
nextPrime p
  | isPrime p' = p'
  | otherwise  = nextPrime p'
  where
    p' = p + 1


nthPrime :: Integer -> Integer
nthPrime n
  | n <  1    = 0
  | otherwise = nthPrime' n 2

nthPrime' :: Integer -> Integer -> Integer
nthPrime' n p
  | n == 1    = p
  | otherwise = nthPrime' n' p'
  where
    n' = n - 1
    p' = nextPrime p


factorize :: Integer -> [Integer]
factorize n
  | n <  0    = [-1] ++ factorize' (-n)
  | n == 0    = []
  | n == 1    = [1]
  | otherwise = factorize' n

factorize' :: Integer -> [Integer]
factorize' = factorize'' [] 2

factorize'' :: [Integer] -> Integer -> Integer -> [Integer]
factorize'' xs p n
  | n == p            = xs'
  | n `divisibleBy` p = factorize'' xs' p (n `div` p)
  | otherwise         = factorize'' xs (nextPrime p) n
  where
    xs' = p:xs
