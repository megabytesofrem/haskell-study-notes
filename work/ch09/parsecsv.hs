-- Parse a CSV string splitting it on commas
parseCSV :: String -> [String]
parseCSV "" = []
parseCSV str
  | length val == 0 = []
  | otherwise = val : parseCSV rest
  where 
    -- trim off the commas
    t   = dropWhile (== ',') str
    val = takeWhile (/= ',') t
    rest = dropWhile (/= ',') t
