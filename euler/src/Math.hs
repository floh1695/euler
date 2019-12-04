module Math
  ( divisibleBy
  , divisibleByAnyOf
  , fibonacci
  , isPalindrone
  , leastCommonMultiple
  ) where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy n d = n `mod` d == 0

divisibleByAnyOf :: [Integer] -> Integer -> Bool
divisibleByAnyOf xs n = or $ map (divisibleBy n) xs


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


isPalindrone :: Integer -> Bool
isPalindrone n = asString == reversed
  where
    asString = show n
    reversed = reverse asString


leastCommonMultiple :: Integral a => a -> a -> a
leastCommonMultiple a b = (a * b) `div` (gcd a b)
