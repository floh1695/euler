module Lib
  ( displaySolutions
  ) where

import Problem1
import Problem2
import Problem3
import Problem4
import Problem5

displaySolutions :: IO ()
displaySolutions = do
  putStrLn "# Problems"
  mapM_ putStrLn reports

reports = map formatSolution problems

problems =
  [ (1, problem1)
  , (2, problem2)
  , (3, problem3)
  , (4, problem4)
  , (5, problem5)
  ]

displaySolution :: Show a => Integer -> a -> IO ()
displaySolution n s = putStrLn report
  where
    report = formatSolution (n, s)

formatSolution :: Show a => (Integer, a) -> String
formatSolution (n, s) = n' ++ ".\t" ++ s'
  where
    n' = show n
    s' = show s
