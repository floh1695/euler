module Prime
  ( isPrime
  , nextPrime
  , factorize
  ) where

import Math


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


nextPrime :: Integer -> Integer
nextPrime p
  | isPrime p' = p'
  | otherwise  = nextPrime p'
  where
    p' = p + 1


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
