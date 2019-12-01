module DivisibleBy
  (divisibleBy
  ) where

divisibleBy :: Integer -> Integer -> Bool
divisibleBy n d = n `mod` d == 0
