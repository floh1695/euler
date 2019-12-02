module Fibonacci
  ( fibonacci
  ) where

fibonacci :: Integer -> Integer
fibonacci = fibonacci' 0 1

fibonacci' :: Integer -> Integer -> Integer -> Integer
fibonacci' current previous counter
  | counter == 0 = current
  | otherwise    = fibonacci' current' previous' counter'
  where
    counter'  = counter - 1
    current'  = current + previous
    previous' = current
