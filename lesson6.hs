myRepeat val = cycle [val]

subseq start end aList = drop start (take end aList)

isFirstHalf val aList =  elem val halfList
                         where middleIndex = length aList `div` 2
                               halfList = take middleIndex aList 

