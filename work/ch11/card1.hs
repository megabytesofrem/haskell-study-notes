import Data.Int

-- Given a datatype
data BigSmall =
   Big Bool
 | Small Bool
 deriving (Eq, SHow)

-- What is the cardinality of the datatype?
-- Cardinality: 4 since Bool has a cardinality of 2, and sum types = addition

data NumberOrBool =
    Numba Int8
  | BoolyBool Bool
  deriving (Eq, Show)

-- What is the cardinality of NumberOrBool?
-- Numba Int8 is an Int8 which is -128..127, so to find its cardinality we do 128+128=256
-- BoolyBool Bool is a Bool which has a cardinality of 2 (True, False)

-- So we add the two cardinalities since it's a sum type
-- C1 = 256
-- C2 = 2
-- C1 + C2 = 258

-- The cardinality of NumberOrBool is 258

--let myNumba = Numba (-128)
