module Lib
  ( displaySolutions
  ) where

import Problem1
import Problem2
import Problem3
import Problem4
import Problem5
import Problem6

displaySolutions :: IO ()
displaySolutions = do
  putStrLn "# Solutions"
  mapM_ putStrLn reports

reports = map formatSolution solutions

data Solution a = Solution Integer a

solutions =
  [ Solution 1 problem1
  , Solution 2 problem2
  , Solution 3 problem3
  , Solution 4 problem4
  , Solution 5 problem5
  , Solution 6 problem6
  ]

formatSolution :: Show a => (Solution a) -> String
formatSolution (Solution n s) = n' ++ ".\t" ++ s'
  where
    n' = show n
    s' = show s
