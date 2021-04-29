myWords :: String -> [String]
myWords "" = []
myWords str
  | length word == 0 = []
  | otherwise = word : myWords rest -- append the word
  where 
    trimmed = dropWhile (== ' ') str -- remove the space
    word = takeWhile (/= ' ') trimmed -- first word
    rest = dropWhile (/= ' ') trimmed -- rest of words

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines "" = []
myLines str
  | length line == 0 = []
  | otherwise = line : myLines rest
  where
    trimmed = dropWhile (== '\n') str
    line = takeWhile (/= '\n') trimmed
    rest = dropWhile (/= '\n') trimmed

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main = 
  print $ "Are they equal? " ++ show (myLines sentences == shouldEqual) 