-- Fix the folds and test in the repl

a = foldr (++) [] ["woot", "WOOT", "woot"]
-- fix: needed a [] as the b argument

b = foldr max [] ["fear is the little death"]
-- fix: needed to enclose the string "fear is the little death" in [ ]

c = foldr (&&) True [False, True]
-- fix: and -> (&&)

-- This one is more subtle than the previous. Can it ever return a different answer?
d = foldr (||) True [False, True] -- not sure, will come back it later

--e = foldl ((++) . show) "" [1..5]

f = foldr (flip const) 'a' [1..5]
g = foldr (flip const) 0 "tacos"
-- fix for both: use (flip const)
-- foldr is: foldr :: [a] -> (a -> b -> b) -> b -> [a] -> b
-- const is: const :: a -> b -> a
--
-- need to flip const so it is: const :: b -> c -> c AKA it returns its second argument

h = foldl const 0 "burritos"
i = foldl const 'z' [1..5]
-- fix for both: remove useless flip since foldl is left associative like const expects
