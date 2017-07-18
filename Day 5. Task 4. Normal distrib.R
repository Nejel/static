#The Normal Distribution

#Task
#http://www.r-tutor.com/elementary-statistics/probability-distributions/normal-distribution

#Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
#Usage

#dnorm(x, mean = 0, sd = 1, log = FALSE)
#pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#rnorm(n, mean = 0, sd = 1)


#My R solution

a <- pnorm(80, mean=70, sd=10, lower.tail=FALSE)
b <- pnorm(60, mean=70, sd=10, lower.tail=FALSE)
c <- pnorm(59, mean=70, sd=10, lower.tail=FALSE)
cat(format(round(c(a, b, c),2),nsmall=2), sep = "\n")

#Result:
#0.401
#0.341
