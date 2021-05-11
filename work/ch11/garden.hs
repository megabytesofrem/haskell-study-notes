data FlowerType = Gardenia
                | Daisy
                | Rose
                | Lilac
                deriving Show

type Gardener = String
data Garden =
  Garden Gardener FlowerType
  deriving Show

-- in normal form
data Garden' =
    Gardener Gardenia
  | Gardener Daisy
  | Gardener Rose
  | Gardener Lilac

