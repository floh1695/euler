module Fibonacci
  ( fibonacci
  ) where

fibonacci :: Integer -> Integer
fibonacci n = fibonacciInner n 0 1

fibonacciInner :: Integer -> Integer -> Integer -> Integer
fibonacciInner n current previous
  | n == 0    = current
  | otherwise = fibonacciInner n' current' previous'
  where
    n'        = n - 1
    current'  = current + previous
    previous' = current
