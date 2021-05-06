myZip :: [a] -> [b] -> [(a, b)]
myZip (a:as) (b:bs) = (a, b) : myZip as bs
myZip _ _ = []

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f (a:as) (b:bs) = f a b : myZipWith f as bs
myZipWith f _ _ = []

-- Rewrite myZip in terms of myZipWith
myZip' :: [a] -> [b] -> [(a, b)]
myZip' = myZipWith (,)