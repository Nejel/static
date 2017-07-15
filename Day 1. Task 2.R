#final R solution


dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=FALSE), split=" ")
a <- as.numeric(q[[2]])
b <- as.numeric(q[[3]])
close(dataset)
M <- matrix(c(a, b), ncol = 2, byrow = FALSE)
N <- M[sort.list(M[,1]), ]
V <- rep((as.numeric(N[,1])), (as.numeric(N[,2])))
numered <- length(V)
lowerEndIndex <- floor(numered / 2)
upperStartIndex <- ceiling(numered / 2) + 1
lowerHalf <- V[1 : lowerEndIndex]
upperHalf <- V[upperStartIndex : numered]
q1 <- as.numeric(median(lowerHalf))
q3 <- as.numeric(median(upperHalf))
cat(format(round(c(q3-q1),1),nsmall=1))



#Almost work solution

dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=FALSE), split=" ")
a <- as.numeric(q[[2]])
b <- as.numeric(q[[3]])
close(dataset)
M <- matrix(c(a, b), nrow = 6, ncol = 2, byrow = FALSE)
N <- M[sort.list(M[,1]), ]
V <- rep((as.numeric(N[,1])), (as.numeric(N[,2])))
numered <- length(V)
lowerEndIndex <- floor(numered / 2)
upperStartIndex <- ceiling(numered / 2) + 1
lowerHalf <- V[1 : lowerEndIndex]
upperHalf <- V[upperStartIndex : numered]
q1 <- as.numeric(median(lowerHalf))
q3 <- as.numeric(median(upperHalf))
cat(format(round(c(q3-q1),1),nsmall=1))


Another solution:

data<-readLines(file("stdin"),warn=FALSE)
X=as.numeric(unlist(strsplit(data[2]," ")))
Y=as.numeric(unlist(strsplit(data[3]," ")))
S=sort(do.call(c,mapply(rep,X,Y)))

mid=length(S) %/% 2
cat(format(round(median(tail(S,mid))-median(S[1:mid]),1),nsmall=1))


OLD:

dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=FALSE), split=" ")
a <- as.numeric(q[[2]])
b <- as.numeric(q[[3]])
close(dataset)
M <- matrix(c(a, b), nrow = 6, ncol = 2, byrow = FALSE)
N <- M[sort.list(M[,1]), ]
V <- rep((as.numeric(N[,1])), (as.numeric(N[,2])))
numered <- length(V)
lowerEndIndex <- floor(numered / 2)
upperStartIndex <- ceiling(numered / 2) + 1
lowerHalf <- V[1 : lowerEndIndex]
upperHalf <- V[upperStartIndex : numered]
q1 <- as.numeric(median(lowerHalf))
q3 <- as.numeric(median(upperHalf))
{
r <- as.numeric(q3-q1)
if(r>1)
{
r <- r + 0.0001
}
r <- r
}
cat(format(round(r), digits = 2))
write(cat(format(round(r), digits = 2)), file = "stdout")



OLD

dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=FALSE), split=" ")
a <- as.numeric(q[[2]])
b <- as.numeric(q[[3]])
close(dataset)
M <- matrix(c(a, b), nrow = 6, ncol = 2, byrow = FALSE)
N <- M[sort.list(M[,1]), ]
V <- rep((as.numeric(N[,1])), (as.numeric(N[,2])))
numered <- length(V)
lowerEndIndex <- floor(numered / 2)
upperStartIndex <- ceiling(numered / 2) + 1
lowerHalf <- V[1 : lowerEndIndex]
upperHalf <- V[upperStartIndex : numered]
q1 <- median(lowerHalf)
q3 <- median(upperHalf)
R <- q3-q1
cat(R)





OLD

dataset <- file("stdin")
open(dataset)
q <- strsplit(readLines(dataset, warn=FALSE), split=" ")
a <- as.numeric(q[[2]])
b <- as.numeric(q[[3]])
close(dataset)
M <- matrix(c(a, b), nrow = 6, ncol = 2, byrow = FALSE)
N <- M[sort.list(M[,1]), ]
V <- rep((as.int(N[,1])), (as.int(N[,2])))
R <- quantile(V, 0.75) - quantile(V, 0.25)
cat(R)
