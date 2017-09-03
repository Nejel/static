https://www.hackerrank.com/challenges/security-tutorial-functions/problem

dataset <- scan("/dev/stdin")
b <- (dataset %% 11)
cat(format(round(c(b),1),nsmall=0))

#Input: 17
#Magic: remainder of x divided by 11
#Result: 6
