module MapUntil
  ( mapUntil
  ) where

mapUntil :: (a -> b) -> (b -> Bool) -> [a] -> [b]
mapUntil = mapUntil' []

mapUntil' :: [b] -> (a -> b) -> (b -> Bool) -> [a] -> [b]
mapUntil' ys f p (x:xs)
  | continue  = mapUntil' (y:ys) f p xs
  | otherwise = ys
  where
    continue = not $ p y
    y        = f x
