-- 1. myOr returns True if any Bool in the list is True.
myOr :: [Bool] -> Bool
myOr (b:bs) = b || myOr bs
myOr [] = False

-- 2. myAny returns True if a -> Bool applied to any of the values in
-- the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f [x] = f x
myAny f (x:xs) = myAny f xs

myElem :: Eq a => a -> [a] -> Bool 
myElem x [] = False
myElem x (y:ys)
  | x == y = True -- x is y
  | otherwise = myElem x ys -- check the next one

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- Squish and squishMap
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

-- squish implemented using squishMap and identity
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id