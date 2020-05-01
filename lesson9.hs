import Data.Char

myMap _ [] = []
myMap f (x:xs) = (f x):myMap f xs

remove _ [] = []
remove f (x:xs) = if f x
                  then remove f xs
                  else x:remove f xs

myProduct xs = foldl (*) 1 xs

myFoldl f init [] = init
myFoldl f init (x:xs) = f x (myFoldl f init xs)


myFoldl2 f init [] = init
myFoldl2 f init (x:xs) = myFoldl2 f (f init x) xs

myElem n xs = length xsWithN > 0
              where xsWithN = filter (\t -> t == n) xs 

isPalindrome sentence = treatedSentence == reverse treatedSentence
                        where noSpaceSentence = filter (\c -> c /= ' ') sentence
                              treatedSentence = map (\c -> toLower c) noSpaceSentence

harmonic 0 = 1
harmonic n = 1 `div` n + harmonic (n-1)

correctedHarmonic n = sum (take n values)
                      where pairs = zip (cycle [1.0]) [1.0, 2.0 ..]
                            values = map (\(first, second) -> first / second) pairs 
