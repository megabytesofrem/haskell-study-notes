f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))

-- Case exercises
functionC x y = case r of 
  True -> x
  False -> y
  where r = x > y

ifEvenAdd2 n = case even n of
  True -> n + 2
  False -> n
  
dodgy x y = x + y * 10 -- adds x + y and * 10
oneIsOne = dodgy 1     -- partially applies dodgy to 1
oneIsTwo = flip dodgy 2 -- flip the function partially applied and apply it to 2? WTF

-- Less retarded names
partiallyApplyOneTo = oneIsOne
flipAndPartiallyApplyTwoTo = oneIsTwo

-- Guards
pal' xs 
  | xs == reverse xs = True
  | otherwise        = False

numbers x
  | x < 0 = -1
  | x == 0 = 0
  | x > 0 = 1