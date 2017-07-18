#My R solution

#Input
#a[1] = 2.5
#a[2] = 5

a <- readLines(con <- file("stdin"), warn = FALSE)
a <- strsplit(a," ")
a <- as.numeric(a)
b <- dpois(a[2], lambda=a[1])
cat(format(round(c(b),3),nsmall=3), sep = "\n")

#Result:
0.067
