module MathSpec
  ( mathSpec
  ) where

import Test.HUnit

import Math

mathSpec :: Test
mathSpec = test1

test1 :: Test
test1 = TestCase (assertBool "Math.test1" (2 `divisibleBy` 1))
