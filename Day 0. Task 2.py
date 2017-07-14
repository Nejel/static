#Python:
#https://www.hackerrank.com/challenges/s10-weighted-mean/problem

#Objective
#In the previous challenge, we calculated a mean. In this challenge, we practice calculating a weighted mean. Check out the Tutorial tab for learning materials and an instructional video!

#Task
#Given an array, X, of N integers and an array, W, representing the respective weights of X's elements, calculate and print the weighted mean of X's elements. Your answer should be rounded to a scale of 1 decimal place (i.e., 12.3 format).

#Python3 solution

n = int(input())
nums = [int(x) for x in input().split()]
weight = [int(x) for x in input().split()]
print (round(1.0*sum([nums[i]*weight[i] for i in range(n)])/sum(weight), 1))
