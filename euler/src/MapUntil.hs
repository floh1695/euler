module MapUntil
  ( mapUntil
  ) where

mapUntil :: (a -> b) -> (b -> Bool) -> [a] -> [b]
mapUntil f p xs = mapUntil' [] f p xs

mapUntil' :: [b] -> (a -> b) -> (b -> Bool) -> [a] -> [b]
mapUntil' ys f p (x:xs)
  | continue  = mapUntil' (y:ys) f p xs
  | otherwise = ys
  where
    y        = f x
    continue = not $ p y
