module Lib
  ( displaySolutions
  ) where

import Problem1 (problem1)
import Problem2 (problem2)
import Problem3 (problem3)
import Problem4 (problem4)
import Problem5 (problem5)
import Problem6 (problem6)
import Problem7 (problem7)
import Problem8 (problem8)

import System.TimeIt (timeIt)

displaySolutions :: IO ()
displaySolutions = do
  putStrLn "# Solutions"
  mapM_ timing reportsIO
  where
    timing f = do
      timeIt f
      putStrLn ""

reports :: [String]
reports = map formatSolution solutions

reportsIO :: [IO ()]
reportsIO = map putStrLn reports

data Solution a = Solution Integer a

solutions =
  [ Solution 1 problem1
  , Solution 2 problem2
  , Solution 3 problem3
  , Solution 4 problem4
  , Solution 5 problem5
  , Solution 6 problem6
  , Solution 7 problem7
  , Solution 8 problem8
  ]

formatSolution :: Show a => Solution a -> String
formatSolution (Solution n s) = n' ++ ".\t" ++ s'
  where
    n' = show n
    s' = show s
