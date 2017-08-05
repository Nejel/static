#Task
#https://www.hackerrank.com/challenges/s10-multiple-linear-regression/tutorial

#R solution N1

library(dplyr)

f <- file("stdin")
on.exit(close(f))

# Get data from input (the hardest part!)
T <- readLines(f) %>%
    strsplit(" ") %>%
    lapply(as.numeric)
m <- T[[1]][1]; n <- T[[1]][2]
train <- T[2:(2+n-1)]
train <- data.frame(t(data.frame(train)))
q <- T[[2+n]][1]
test <- T[(2+n+1):(2+n+q)]
test <- data.frame(t(data.frame(test)))

# Do the modelling
formula <- as.formula(paste(tail(names(train), 1), "~ ."))
model <- lm(formula, train)
predict(model,test) %>%
  round(2) %>%
  format(nsmall = 2) %>%
  write(stdout())

#Result
#

#R solution N2

data <- read.table("/dev/stdin", fill = TRUE, header = FALSE)
vec1 <- unlist(data[1,])
d1 <- data[2:vec1[2],]
vec <- colnames(d1)
form1 <- paste(vec[(vec1[1]+1)], "~", sep = "")
form2 <- paste(vec[-(vec1[1]+1)], collapse = "+")
form <- paste(form1, form2, sep = "")
m <- lm(as.formula(form), data = d1)
coef <- summary(m)$coefficients[,1]
coef <- round(coef, 2)

vec2 <- unlist(data[vec1[2]+2,])
a <- vec1[2]+3
b <- vec1[2]+vec2[1]+2
d2 <- data[a:b,1:2]
vec <- coef[1] + d2$V1 * coef[2] + d2$V2 * coef[3]
vec <- format(round(vec, 2), nsmall = 2)
cat(vec, sep = "\n")

#Result
#

some challenges
some more challenges
