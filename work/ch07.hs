-- Rewrite the f function using a lambda
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

-- Rewrite the following using a lambda
addFive = \x y -> (if x > y then y else x) + 5

-- Rewrite the following to not use a lambda
mflip f x y = f y x