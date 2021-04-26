{-# LANGUAGE DuplicateRecordFields #-}

data Worker = Worker { name :: String, job :: String } deriving (Show)
data Student = Student { name :: String, school :: String } deriving (Show)
data Child = Child { name :: String } deriving (Show)

class Person a where
  getName :: a -> String
  getOccupation :: a -> String

instance Person Student where
  getName x = name (x :: Student)
  getOccupation x = "Studying at " ++ school x

instance Person Child where
  getName x = name (x :: Child)
  getOccupation x = "it's a child"

instance Person Worker where
    getName x = name (x :: Worker)
    getOccupation x = job x
