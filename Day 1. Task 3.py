#https://www.hackerrank.com/challenges/s10-standard-deviation/problem
#Calculating Standard Deviation

#Sample Input:
#5
#10 40 30 50 20

#Result:
#14.1

import statistics as st

n = int(input())
data = list(map(int, input().split()))
print(round(st.pstdev(data), 1))
