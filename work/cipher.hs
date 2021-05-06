module Cipher where

import Data.Char

-- Encode a character in the caesar cipher
encChar :: Char -> Int -> Char
encChar c s = enc c s 
  where
    enc c shift 
      | isSpace c   = c
      | isUpper c   = chr $ (ord c + shift - 65) `mod` 26 + 65
      | otherwise   = chr $ (ord c + shift - 97) `mod` 26 + 97 

-- Encode a message in the caesar cipher 
encCaesar :: String -> Int -> String
encCaesar ss s = map (`encChar` s) ss

decCaesar :: String -> Int -> String
decCaesar ss s = encCaesar ss $ negate s