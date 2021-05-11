data Fiction = Fiction deriving Show
data Nonfiction = Nonfiction deriving Show

data BookType = FictionBook Fiction
              | NonfictionBook Nonfiction
              deriving Show

-- We define two constant/nullary types Fiction and Nonfiction.
-- We have a sum type BookType which has two constructors that takes either one of our types
-- as arguments.

type AuthorName = String
data Author1 = Author1 (AuthorName, BookType)

-- This *isnt* a sum of products so it isn't normal form.

data Author2 =
    Fiction AuthorName
  | Nonfiction AuthorName
  deriving (Eq, Show)

-- This is *distributive*. Products distribute over sums. Just as we can break a * (b + c) into a * b + b * c,
-- we can break the values into a sum of products.

-- Now it's in normal form since no further evaluation on the constructors
-- can be done until some computation / operation is done with these types.
