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

a <- read.table("stdin",header=F, skip=1)
dat <- t(a)
M <- cor(dat[,1],dat[,2], method ="spearman")
cat(round(M,3))

#Result
#0.903
