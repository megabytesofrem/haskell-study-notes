-- Given the following sets of consonants and vowels
stops = "pbtdkg"
vowels = "aeiou"

-- a) Write a function that takes inputs from stops and vowels and makes 3 tuples of
-- all possible stop-vowel-stop combinations.


combinations :: [a] -> [a] -> [(a, a, a)]
combinations stops vowels = [(s, v, s) | s <- stops, v <- vowels]

nounVerbCombinations :: [a] -> [a] -> [(a, a, a)]
nounVerbCombinations nouns verbs = [(n, v, n) | n <- nouns, v <- verbs]

onlyP = filter (\(a, _, _) -> a == 'p') $ combinations stops vowels

nouns = ["apple", "orange", "banana"]
verbs = ["eat", "peel", "pluck"]

-- Gets the average characters per word in a string
seekritFunc x =
  div (sum (map length (words x)))
      (length (words x))

-- Fractional division version
seekritFunc' x = (fromIntegral $ sum $ map length (words x)) / (fromIntegral $ length (words x))
