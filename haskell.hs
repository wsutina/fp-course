x :: Integer
x = 99

f :: Integer -> Integer
f r = r + 10

-- Right assoc
ff :: Integer -> Integer -> Integer
ff a b = (a + b) * 2

-- In-line function
fff :: Integer -> Integer -> Integer
fff = \a b -> (a + b) * 2

ffff = \a -> \b -> (a + b) * 2
fffff a = \b -> (a + b) * 2

g x = x -- h :: p -> p
h x y = x -- h :: p1 -> p2 -> p1

-- Data type needs to start with a capital letter
-- Sealed, closed constructor
data Shape =
  Circle Integer 
  | Rectangle Integer Integer
  | Triangle Integer Integer Integer
  deriving (Eq, Show)

pie :: Integer
pie = 3

-- Pattern matching
perimeter :: Shape -> Integer
perimeter = \s -> case s of
  Circle r -> r * 2 * pie
  Rectangle w h -> (w + h) * 2
  Triangle a b c -> a + b + c

perimeteragain :: Shape -> Integer
perimeteragain (Circle r) = r * 2 * pie
perimeteragain (Rectangle w h) = (w + h) * 2
perimeteragain (Triangle a b c) = a + b + c

hh :: (Integer -> Integer) -> Integer
hh w = 1 + w 88

-- Type classes
class Equal a where
  (===) :: a -> a -> Bool

{-
instance Equal Shape where
  (===) s1 s2 =
    case s1 of
      Circle r1 -> case s2 of
        Circle r2 -> r1 == r2
        _ -> False
      _ -> False
-}

instance Equal Shape where
  (===) (Circle r1) (Circle r2) = r1 == r2
  (===) (Rectangle w1 _) (Rectangle w2 _) = w1 == w2
  (===) _ _ = False







