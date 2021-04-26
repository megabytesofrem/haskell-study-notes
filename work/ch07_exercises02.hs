-- More functional patterns

-- 1. The following function returns the tens digit of an integral
-- argument.

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

-- Does the divMod version have the same type as the original
-- version? No.

tensDigit' :: Integral a => a -> (a, a)
tensDigit' x = d
  where d = x `divMod` 10

hunsD :: Integral b => b -> b
hunsD x = d
  where d = fst $ x `divMod` 100 

-- 2. Implement the function of the type a -> a -> Bool -> a once
-- each using a case expression and once with a guard.

-- Case
foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b = case b of 
  True  -> x
  False -> y

-- Guards
foldBool3 :: a -> a -> Bool -> a
foldBool3 x y b 
  | b == True  = x
  | b == False = y

{-
Fill in the definition. Note that the ﬁrst argument to our function
is also a function which can be applied to values. Your second
argument is a tuple, which can be used for pattern matching:
-}
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)