-- Typeclasses
data Trivial = Trivial

instance Eq Trivial where
  Trivial == Trivial = True

-- DayOfWeek
data DayOfWeek
  = Mon
  | Tue
  | Weds
  | Thu
  | Fri
  | Sat
  | Sun
  deriving (Eq, Show)

-- Friday is the best day
instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _   Fri = LT
  compare _   _   = EQ

data Date = Date DayOfWeek Int

instance Eq Date where
  -- pattern match to compare 
  (Date weekday dayOfMonth) == (Date weekday' dayOfMonth') =
    weekday == weekday' && dayOfMonth == dayOfMonth'


-- Writing typeclass instances with polymorphic parameters
data Identity a = 
  Identity a

-- Require that the polymorphic type has an Eq instance
-- Without the Eq a =>, we would never be able to know if a has an Eq instance
instance Eq a => Eq (Identity a) where
  (Identity v) == (Identity v') = 
    v == v'