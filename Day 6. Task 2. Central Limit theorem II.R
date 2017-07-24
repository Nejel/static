#Task
#https://www.hackerrank.com/challenges/s10-the-central-limit-theorem-1
#https://www.hackerrank.com/challenges/s10-the-central-limit-theorem-1/tutorial

#Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
#Usage

#dnorm(x, mean = 0, sd = 1, log = FALSE)
#pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#rnorm(n, mean = 0, sd = 1)


#My R solution

mean <- 500
std <- 80
n <- 100
z <- 1.96
a <- z * (std / sqrt(n))
b <- mean - a
c <- mean + a
cat(format(round(c(b, c),2),nsmall=2), sep = "\n")

#Result
#484.32
#515.68
