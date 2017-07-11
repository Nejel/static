//Objective
//In this challenge, we practice calculating quartiles. Check out the Tutorial tab for learning materials and an instructional video!

//Task
//Given an array, X, of n integers, calculate the respective first quartile (Q1), second quartile (Q2), and third quartile (Q3). It is guaranteed that Q1, Q2, and Q3 are integers.

//Python3 solution:

import statistics as st

n = int(input())
data = list(map(int, input().split()))
freq = list(map(int, input().split()))

s = []
for i in range(n):
s += [data[i]] * freq[i]
N = sum(freq)
s.sort()

if n%2 != 0:
q1 = st.median(s[:N//2])
q3 = st.median(s[N//2+1:])
else:
q1 = st.median(s[:N//2])
q3 = st.median(s[N//2:])

ir = round(float(q3-q1), 1)
print(ir)
