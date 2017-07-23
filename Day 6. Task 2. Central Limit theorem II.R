#Task
#https://www.hackerrank.com/challenges/s10-the-central-limit-theorem-1
#https://www.hackerrank.com/challenges/s10-the-central-limit-theorem-1/tutorial

#My R solution

a <- pnorm(250, mean = (100*2.4), sd = sqrt (100) * 2.0)
cat(format(round(c(a),4),nsmall=4), sep = "\n")

#Result
0.6915
