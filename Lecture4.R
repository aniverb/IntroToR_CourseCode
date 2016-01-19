#Dates and Time
x <- as.Date("2016-01-15")
class(x)
unclass(x) #internal representation of date

weekdays(x)
months(x)
quarters(x)

x <- Sys.time()
class(x)
unclass(x)
p<- as.POSIXlt(x) 
names(unclass(p))
p$min
p$year #years since 1900

datetime <- c("01-15-16 11:00", "01-14-16 18:30")
strptime(datetime, "%m-%d-%y %H:%M")

datetime2 <- c("January 15, 2016 11:00", "January 14, 2016 18:30")
strptime(datetime2, "%B %d, %Y %H:%M")

#Simulation and generating random numbers
sample(1:6)

#die rolls (Binomial Distribution)
sample(1:6, size=50, replace=TRUE)
mean(sample(1:6, size=50, replace=TRUE))

replicate(5, c(2,5,7))
rep(c(2,5,7), 5) #similar but different

replicate(10, sample(1:6, size=50, replace = TRUE))
replicate(10, mean(sample(1:6, size=50, replace = TRUE)))

#tossing a coin (Bernoulli Distribution, special case of Binomial)
rbinom(10, 5, .5)
sample(0:1, size = 5, replace=TRUE)
sum(sample(0:1, size = 5, replace=TRUE))
replicate(10, sum(sample(0:1, size = 5, replace=TRUE)))

#Bell Curve (Normal or Gaussian Distribution)
rnorm(5)
rnorm(5, sd=.5)
rnorm(5, mean=2)
rnorm(5, sd=.25, mean=2)

#Poisson Distribution 
#independent events happening over time
rpois(12, lambda = 2)


#Uniform Distribution, events with equal probablity
runif(6)
runif(6, -.5, .5)

#reproducabilty
set.seed(1000000)
sample(1:6)

set.seed(8)
rbinom(10, 5, .5)

set.seed(1-15-2016)
rpois(12, lambda = 2) #lambda is a rate parameter

#apply family of functions
#lapply
x <- list(a=1:5, b=rnorm(10))
x
lapply(x, mean)

y <- 1:4
lapply(y, runif)
lapply(y, runif, min=-.5, max=.5)

z <- list(a = matrix(1:4, 2, 2), b=matrix(1:6, 3, 2))
z

getcol1 <- function(a){a[,1]}
lapply(z, getcol1)

lapply(z, function(a){a[,1]}) #called an anonymous function because it does not have name

#sapply
sapply(x, mean)
sapply(z, sum)

setwd("C:/Users/aniverb/Documents/Grad School/JHU/Intro to R/2016 Materials/Files")#your file path
diabetic <- read.csv("diabetic_data.csv")
subDiabetic <- diabetic[13:15]
subDiabetic_m <- diabetic[,13:15] #same as above
lapply(subDiabetic, mean)
sapply(subDiabetic_m, mean)

names(diabetic) #to copy column names
subDiabetic1 <- diabetic[[c("num_lab_procedures", "num_procedures", "num_medications" )]] #does not actually work because double brackets implies vector

subDiabetic1 <- diabetic[c("num_lab_procedures", "num_procedures", "num_medications" )] #single bracket implies dataframe
subDiabetic1 <- data.frame(diabetic[["num_lab_procedures"]], diabetic[["num_procedures"]], diabetic[["num_medications"]])
sapply(subDiabetic1, mean)

