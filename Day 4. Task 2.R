
dataset <- file("stdin")
open(dataset)
q <- strsplit(dataset, split = " ")
V <- as.numeric(q[[1]])
close(dataset)
#V = 1.09
a <- 1-(pbinom(2, 6, (V/(V+1))))
cat(format(round(c(a),3),nsmall=3))
