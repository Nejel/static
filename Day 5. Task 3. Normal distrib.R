#The Normal Distribution

#Task
#In a certain plant, the time taken to assemble a car is a random variable, X , having a normal distribution with a mean of 20 hours and a standard deviation of 2 hours. What is the probability that a car can be assembled at this plant in:
#Less than 19.5 hours?
#Between 20 and 22 hours?
#https://stat.ethz.ch/R-manual/R-devel/library/stats/html/Normal.html

#Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
#Usage

#dnorm(x, mean = 0, sd = 1, log = FALSE)
#pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#rnorm(n, mean = 0, sd = 1)


#My R solution

a <- pnorm(19.5, 20, 2)
b <- pnorm(22, 20, 2) - pnorm(20, 20, 2)
cat(format(round(c(a, b),3),nsmall=3), sep = "\n")

#Result:
#0.401
#0.341
