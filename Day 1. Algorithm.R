#Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.

#We define the rating for Alice's challenge to be the triplet A = (a0,a1,a2), and the rating for Bob's challenge to be the triplet B = (b0,b1,b2).

#Your task is to find their comparison points by comparing a0 with b0, a1 with b1, and a2 with b2.

#If a^i>b^i , then Alice is awarded 1 point.
#If a^i<b^i, then Bob is awarded 1 point.
#If a^i=b^i, then neither person receives a point.
#Comparison points is the total points a person earned.

#Given A and B, can you compare the two challenges and print their respective comparison points?


#R solution:

base <- suppressWarnings(readLines(file("stdin")))
base <- strsplit(base, " ")

a <- as.numeric(base[[1]])
b <- as.numeric(base[[2]])

alice <- sum(a > b)
bob <- sum(b > a)

cat(alice, bob)
