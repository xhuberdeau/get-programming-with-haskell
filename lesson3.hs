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
