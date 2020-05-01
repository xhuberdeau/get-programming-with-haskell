doubleDouble x = dubs * 2
  where dubs = x * 2

doubleDoubleLambda x = (\val -> val * 2) x * 2

overwrite x = let x = 2
              in
                let x = 3
                in
                  let x = 4
                  in
                    x

ifEven f x = if even x
             then f x
             else x


substract2 = flip (-) 2

ifEvenInc = ifEven (\t -> t + 1)
ifEvenDouble = ifEven (\t -> t * 2)
ifEvenSquare = ifEven (\t -> t * t)

binaryPartialApplication f arg = \t -> f arg t 
takeFromFour = binaryPartialApplication (-) 4
