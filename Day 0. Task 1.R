//https://www.hackerrank.com/challenges/s10-basic-statistics

//Objective 
//In this challenge, we practice calculating the mean, median, and mode. Check out the Tutorial tab for learning materials and an instructional video!

//Task 
//Given an array, , of  integers, calculate and print the respective mean, median, and mode on separate lines. If your array contains more than one modal value, choose the numerically smallest one.

//R:
a <- c(64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060) 
P <- matrix(c(mean(a), median(a), min(a))) 
cat(P , file = "", sep = "\n", fill = TRUE, labels = NULL, append = FALSE)



