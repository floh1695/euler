module Fibonacci
  ( fibonacci
  ) where

fibonacci :: Integer -> Integer
fibonacci n = fibonacci' n 0 1

fibonacci' :: Integer -> Integer -> Integer -> Integer
fibonacci' n current previous
  | n == 0    = current
  | otherwise = fibonacci' n' current' previous'
  where
    n'        = n - 1
    current'  = current + previous
    previous' = current
