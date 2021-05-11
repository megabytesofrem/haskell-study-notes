{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}

class TooMany a where
  tooMany :: a -> Bool

newtype Goats =
  Goats Int
  deriving (Eq, Show, TooMany)

instance TooMany Int where
  tooMany n = n > 42

instance TooMany (Int, String) where
  tooMany (n, s) = n > 42

instance TooMany (Int, Int) where
  tooMany (x, y) = x + y > 42

instance (Num a, Eq a, Ord a, TooMany a) => TooMany (a, a) where
  tooMany (x, y) = x + y > 42
