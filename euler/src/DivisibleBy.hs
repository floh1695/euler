module DivisibleBy
  ( divisibleBy
  , divisibleByAnyOf
  ) where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy n d = n `mod` d == 0

divisibleByAnyOf :: [Integer] -> Integer -> Bool
divisibleByAnyOf xs n = or $ map (divisibleBy n) xs
