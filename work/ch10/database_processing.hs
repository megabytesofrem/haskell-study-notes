import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = 
    [ DbDate (UTCTime (fromGregorian 1911 5 1)
             (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello world!"
    , DbDate (UTCTime (fromGregorian 1921 5 1)
             (secondsToDiffTime 34123))
    ]

-- 1. Write a function that filters for DbDate values and returns a list of the UTCTime
-- values inside of them.
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr getDate [] 
  where
    getDate (DbDate d) xs = xs ++ [d]
    getDate _ xs = xs

-- Write a function that ﬁlters for DbNumber values and returns a list
-- of the Integer values inside them.
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr getNum []
  where 
    getNum (DbNumber i) xs = xs ++ [i]
    getNum _ xs = xs

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate

sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

avgDb :: [DatabaseItem] -> Double
avgDb items = fromIntegral $ calcAvg items where
  calcAvg items = sumDb items `div` fromIntegral (length items)
