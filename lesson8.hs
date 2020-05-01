myDrop _ [] = []
myDrop 0 aList = aList
myDrop n (_:xs) = myDrop (n-1) xs

myLength [] = 0
myLength (_:xs) = 1 + myLength xs

myTake n [] = []
myTake 0 _ = []
myTake n (x:xs) = [x] ++ myTake (n-1) xs

myCycle (x:xs) = x:myCycle (xs++[x])

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fastFib _ _ 0 = 0
fastFib _ _ 1 = 1
fastFib n1 n2 3 = n1 + n2
fastFib n1 n2 counter = fastFib (n1 + n2) n1 (counter - 1)
