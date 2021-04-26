yoda :: String -> String
yoda s = unwords $ l : r
  where
    l = last $ words s
    r = init $ words s
