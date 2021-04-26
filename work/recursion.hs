-- Sums up the elements of a list using recursion
sum' [] = 0 -- base case
sum' (x:xs) = x + sum' xs

head' [] = error "empty list"
head' (x:xs) = x

-- Takes n elements from a list
take' n _
  | n <= 0 = [] -- if n is 0, give back an empty list
take' n [] = [] -- base case 2
take' n (x:xs) = x:take' (n-1) xs -- prepend x to the list

-- Maps a function over a list
map' f [] = [] -- base case, empty list
map' f (x:xs) = f x:map' f xs

-- foldl style recursion
