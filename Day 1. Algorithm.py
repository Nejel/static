#Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.

#We define the rating for Alice's challenge to be the triplet A = (a0,a1,a2), and the rating for Bob's challenge to be the triplet B = (b0,b1,b2).
#Your task is to find their comparison points by comparing a0 with b0, a1 with b1, and a2 with b2.

#If a^i>b^i , then Alice is awarded 1 point.
#If a^i<b^i, then Bob is awarded 1 point.
#If a^i=b^i, then neither person receives a point.
#Comparison points is the total points a person earned.

#Given A and B, can you compare the two challenges and print their respective comparison points?

#Python3 solution:

def solve(a0, a1, a2, b0, b1, b2):
    # Complete this function
    a = (1 if a0 > b0 else 0) + (1 if a1 > b1 else 0) + (1 if a2 > b2 else 0)
    b = (1 if a0 < b0 else 0) + (1 if a1 < b1 else 0) + (1 if a2 < b2 else 0)
    return (a,b)


#Another solution:

a0,a1,a2 = map(int, input().split())
b0,b1,b2 = map(int, input().split())
print((a0 > b0) + (a1 > b1) + (a2 > b2), (a0 < b0) + (a1 < b1) + (a2 < b2))
