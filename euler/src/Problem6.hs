module Problem6
  ( problem6
  ) where

{-
# Sum square difference
The sum of the squares of the first ten natural numbers is,
  1**2 + 2**2 + ... + 10**2 = 385

The square of the sum of the first ten natural numbers is,
  (1 + 2 + ... + 10)**2 = 552 = 3025

Hence the difference between the sum of the squares of the
  first ten natural numbers and the square of the sum is,
    3025  385 = 2640.

Find the difference between the sum of the squares of the
  first one hundred natural numbers and the square of the sum.
-}
problem6 :: Integer
problem6 = solution
  where
    numbers = [1..100]
    sumOfSquares' = sumOfSquares numbers
    squareOfSum' = squareOfSum numbers
    solution = squareOfSum' - sumOfSquares'

sumOfSquares :: [Integer] -> Integer
sumOfSquares xs = sum $ map (^ 2) xs

squareOfSum :: [Integer] -> Integer
squareOfSum xs = sum' ^ 2
  where
    sum' = sum xs
