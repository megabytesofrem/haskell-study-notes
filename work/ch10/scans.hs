-- 1. Modify your fibs function to only return the first 20 Fibonacci numbers
fibs :: [Integer]
fibs = 1 : scanl (+) 1 fibs

firstTwentyFibs :: [Integer]
firstTwentyFibs = take 20 $ fibs


-- 2. Modify fibs to return the Fibonacci numbers less than 100
--fibsLessThanHundred :: [Int]
-- fibsLessThanHundred = [x | x <- fibs, x < 100

fact :: [Integer]
-- 4! = 4 * 3 * 2 * 1
fact = scanl (*) 1 [2..]

factN n = fact !! n
