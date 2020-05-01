myGCD a b = if modulo == 0
            then b
            else myGCD b modulo
            where modulo = a `mod` b


sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount _ = "a bunch"

myTail [] = []
myTail (_:xs) = xs

myGCDPM a 0 = a
myGCDPM a b = myGCDPM b (a `mod` b)
