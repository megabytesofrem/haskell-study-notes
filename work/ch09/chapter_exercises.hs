import Data.Char

-- Write that function such that, given the input “HbEfLrLxO,”
-- your function will return “HELLO.”
filterUppercase :: String -> String
filterUppercase = filter isUpper

-- Write a function that will capitalize the ﬁrst letter of a String and
-- return the entire String. For example, if given the argument
-- “julie,” it will return “Julie.”
capitalizeFirst :: String -> String
capitalizeFirst (c:cs) = toUpper c : cs

-- Recursively go through and convert the string to UPPERCASE
uppercaseAll :: String -> String
uppercaseAll "" = ""
uppercaseAll (c:cs) = toUpper c : uppercaseAll cs

-- First letter capitalized
firstCapitalized :: String -> Char
firstCapitalized = toUpper . head -- pointfree is based