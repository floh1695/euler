module IsPalindrone
  ( isPalindrone
  ) where

isPalindrone :: Integer -> Bool
isPalindrone n = asString == reversed
  where
    asString = show n
    reversed = reverse asString
