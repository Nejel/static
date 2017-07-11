//https://www.hackerrank.com/challenges/s10-weighted-mean/problem

//Objective
//In the previous challenge, we calculated a mean. In this challenge, we practice calculating a weighted mean. Check out the Tutorial tab for learning materials and an instructional video!

//Task 
//Given an array, X, of N integers and an array, W, representing the respective weights of X's elements, calculate and print the weighted mean of X's elements. Your answer should be rounded to a scale of 1 decimal place (i.e., 12.3 format).

//R:
dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=FALSE), split=" ")
x <- as.numeric(q[[2]])
w <- as.numeric(q[[3]])
close(dataset)
cat(format(round(crossprod(w, x) / sum(w), 1), nsmall=1))
