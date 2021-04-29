data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (TisAn i) == (TisAn i') = i == i'

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (Two a b) == (Two a' b') = a == a' && b == b'

data StringOrInt =
    TisAnInt Int 
  | TisAString String

instance Eq StringOrInt where
  (TisAnInt i) == (TisAnInt i') = True
  (TisAString s) == (TisAString s') = True
  _ == _ = False

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (Pair a b) == (Pair a' b') = a == a' && b == b'

data Which a =
    ThisOne a
  | ThatOne a
  
-- instance Eq a => Eq (Which a) where
