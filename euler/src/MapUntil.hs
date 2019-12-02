module MapUntil
  ( mapUntil
  ) where

mapUntil :: (a -> b) -> (b -> Bool) -> [a] -> [b]
mapUntil f p xs = mapUntilInner [] f p xs

mapUntilInner :: [b] -> (a -> b) -> (b -> Bool) -> [a] -> [b]
mapUntilInner ys f p (x:xs)
  | continue  = mapUntilInner (y:ys) f p xs
  | otherwise = ys
  where
    y        = f x
    continue = not $ p y
