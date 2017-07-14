#Objective
#In this challenge, we practice calculating quartiles. Check out the Tutorial tab for learning materials and an instructional video!

#Task
#Given an array, X, of n integers, calculate the respective first quartile (Q1), second quartile (Q2), and third quartile (Q3). It is guaranteed that Q1, Q2, and Q3 are integers.

#R solution:

scanned <- scan(file("stdin"), skip = 1, quiet = TRUE)
aftersorted <- sort(scanned)
numered <- length(aftersorted)
lowerEndIndex <- floor(numered / 2)
upperStartIndex <- ceiling(numered / 2) + 1
lowerHalf <- aftersorted[1 : lowerEndIndex]
upperHalf <- aftersorted[upperStartIndex : numered]
q1 <- median(lowerHalf)
q2 <- median(scanned)
q3 <- median(upperHalf)
cat(q1, "\n")
cat(q2, "\n")
cat(q3)
