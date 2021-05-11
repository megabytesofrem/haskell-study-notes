myAnd :: [Bool] -> Bool
myAnd = foldr (&&) True

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f (x:xs) = foldr (\b a -> f b || a) (f x) xs

myEqual :: Eq a => a -> [a] -> [Bool]
myEqual thing things = map (\x -> x == thing) things

--myElem :: Eq a => a -> [a] -> Bool
myElem :: Eq a => a -> [a] -> Bool
myElem x xs = foldr (\a b -> b || x == a) False xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' x = myAny (== x)

myReverse :: [a] -> [a]
myReverse xs = foldl (flip (:)) [] xs

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldl (\ys a -> ys ++ [f a]) [] xs

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f xs = foldr (\a bs -> if f a then a : bs else bs) [] xs

squish :: [[a]] -> [a]
squish xs = foldr (++) [] xs
