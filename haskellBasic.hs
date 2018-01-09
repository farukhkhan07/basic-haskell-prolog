
sq = take(1000) [x^2 | x <- [1..]]


pr1 = [ x | x <- [1..999], prime x]


pr2 = take [ (x, y) | x <- [2..99]9, prime x, y <-[x+2], prime y] 


pr3 = take (100) [ (x) | x <- [2..], prime x]


pow3 = [3^x | x<- [1..1000]]


succPairs = [(x,x+1) | x <- [1..]]


ones = [replicate x 1 | x <- [0, 2..]]


shift1 x = map (succ) x