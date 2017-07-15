#https://www.hackerrank.com/challenges/s10-standard-deviation/problem
#Calculating Standard Deviation

#Sample Input:
#5
#10 40 30 50 20

#Result:
#14.1

#R solution:
dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=TRUE), split=" ")
b <- as.numeric(q[[2]])
close(dataset)
r <- sqrt(mean((b - mean(b))^2))
cat(format(round(c(r),1),nsmall=1))
