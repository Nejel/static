#My R solution
dataset <- file("stdin")
open(dataset)
dataset2 <- unlist(dataset)[ c(TRUE,FALSE) ]
q <- (dataset2 [1]) #read  element from dataset
V <- as.numeric(q)
close(dataset)
a <- sum(dbinom(0:2, 10, 0.12))
b <- sum(dbinom(2:10, 10, 0.12))
cat(format(round(c(a, b),3),nsmall=3), sep = "\n")


#Results:
#0.891
#0.342





#Another cool R solution in 2 lines
p1 <- sum(dbinom(0:2, 10, .12))
p2 <- sum(dbinom(2:10, 10, .12))

cat(round(p1,3),"\n")
cat(round(p2,3),"\n")






#3rd R solution

# Enter your code here. Read input from STDIN. Print output to STDOUT
a <- readLines("stdin" , warn = FALSE)
a <- strsplit(a[[1]]," ")
a <- as.numeric(a[[1]])
p <- (a[1]/100)
sum1  = dbinom(0, size=a[2], prob=p) + dbinom(1, size=a[2], prob=p) + dbinom(2, size=a[2], prob=p)
sum2 = 0
for(i in 2:a[2] ){
    sum2 = sum2 + dbinom(i, size=a[2], prob=p)
}

at_most2 <- round(sum1,3)
at_least2 <- round(sum2,3)
cat(at_most2)
cat("\n")
cat(at_least2)
