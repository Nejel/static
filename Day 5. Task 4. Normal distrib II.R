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

a <- 100*(1-pnorm(80, mean=70, sd=10))
b <- 100*(1-pnorm(60, mean=70, sd=10))
c <- 100*(pnorm(60, mean=70, sd=10))
cat(format(round(c(a, b, c),2),nsmall=2), sep = "\n")

#Result:
#15.87
#84.13
#15.87
