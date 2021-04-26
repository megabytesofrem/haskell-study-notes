module Arith4 where
  -- id :: a -> a
  -- id x = x

  roundTrip :: (Show a, Read a) => a -> a
  roundTrip a = read (show a)

  roundTripPF :: (Show a, Read a) => a -> a
  roundTripPF = read . show

  main = do
    putStrLn "Round trip: "
    print (roundTrip 4)

    putStrLn "Round trip (point free):"
    print (roundTripPF 4)

    putStrLn "id:"
    print (id 4)