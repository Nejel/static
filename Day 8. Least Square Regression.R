#Task
#https://www.hackerrank.com/challenges/s10-least-square-regression-line/tutorial


#My R solution

data <- read.table("stdin",header=F, skip=0)
dat <- t(data)
x=dat[1,];
y=dat[2,];
m = lm(y~x)
cat(round(predict(m, newdata=data.frame(x=80),se.fit=T)[[1]],digits=3))

#Result
#78.288

#My R solution 2

x= c(95,85,80,70,60)
y= c(85,95,70,65,70)
m = lm(y~x)
cat(round(predict(m, newdata=data.frame(x=80),se.fit=T)[[1]],digits=3))

#Result
#78.288
