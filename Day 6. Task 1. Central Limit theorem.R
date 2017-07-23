#Task
#https://www.hackerrank.com/challenges/s10-the-central-limit-theorem-1
#https://www.hackerrank.com/challenges/s10-the-central-limit-theorem-1/tutorial

#My R solution

a <- pnorm(9800, mean = (205 *49), sd = 15 * sqrt(49))
cat(format(round(c(a),4),nsmall=4), sep = "\n")
