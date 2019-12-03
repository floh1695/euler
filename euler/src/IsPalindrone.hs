module IsPalindrone
  ( isPalindrone
  ) where

isPalindrone :: Integer -> Bool
isPalindrone n = solution
  where
    asString = show n
    reversed = reverse asString
    solution = asString == reversed
