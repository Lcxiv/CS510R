#This was my first assignment for 503 since I could not find my midterm one. 

#The dataframe pop1 contains 3 outcomes on 10,000 
#simulated subjects intended to represent a population. 
#Use the functions described below to explore the data 
#and apply the sampling methods described in class

#You are welcome to use any functions you have learned
#in the past or others that you learn about online

#Question 1
#Use the summary(), sd(), hist() and boxplot() functions
#to explore x1
col1 <- pop1$x1
col2 <- pop1$x2
col3 <- pop1$x3

summary(pop1$x1)
sd(pop1$x1)
hist(pop1$x1)
boxplot(pop1$x1)
table(pop1$x1,pop1$x2)
#Question 2
#x2 and x3 are categorial variables coded as numbers
#Use the table() function to explore x2 and x3 for the population
table(col2)/10000
table(col3)/10000
#Question 3
#x2 seems to have a different distribution for subjects
#with values of x1 that are less than the mean of x1 
#and for subjects with values of x1 that are greater than
#or equal to the mean of x1
#Use the table() function and subsetting calls to see this
#relationship
#See this link for help
#https://www.statmethods.net/management/subset.html


#Question 4
#Does the distibution of x3 have the same relationship to x1 
#as x2?

#Question 5
#Use the sample() and/or subset() function to simulate
#taking a simple random sample of 300 subjects from the population
#Use the functions in questions 1 and 2 to determine if the 
#distributions of x1, x2, and x3 are similar to that of 
#the overall population
#use the following for help
#help(sample) or help(subset)
#https://stackoverflow.com/questions/8273313/sample-random-rows-in-dataframe
s <- sample(pop1$x1,300)
hist(pop1$x3, col = "blue", border = "grey", main = paste("Distribution of x3"), xlab= "Values", ylab = "Count")
#Question 6
#How would you sample 300 subjects stratifying on x2? x3? Are the 
#distributions of x2 x3 similar to that of the population?
#sum(pop1$x1 < (m+s) & pop1 > (m-s))/10000
m <- mean(pop1$x1)
s <- sd(pop1$x1)
sum(pop1$x1 < (m+2*s) & pop1 > (m-2*s))/10000
#sum(pop1$x1 < (m+3*s) & pop1 > (m-3*s))/10000