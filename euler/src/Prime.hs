module Prime
  ( isPrime
  , nextPrime
  , nthPrime
  , factorize
  ) where

import Math


isPrime :: Integer -> Bool
isPrime n
  | n < 2             = False
  | n `elem` [2, 3]   = True
  | n `divisibleBy` 2 = False
  | otherwise         = isPrime' maxTest 3 n
  where
    maxTest = ceiling . sqrt . fromInteger $ n

isPrime' :: Integer -> Integer -> Integer -> Bool
isPrime' m t n
  | n == t            = True
  | n `divisibleBy` t = False
  | t > m             = True
  | otherwise         = isPrime' m t' n
  where
    t' = t + 2


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
  | n <  0    = -1 : factorize' (-n)
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
