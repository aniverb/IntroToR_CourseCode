#LLN and CLT
dieRoll <- sample(1:6, size=1000, replace=TRUE)
hist(dieRoll)
mean(sample(1:6, size=100, replace=TRUE))
hist(replicate(1000, mean(sample(1:6, size=50, replace=TRUE))))

coinToss <- sample(0:1, size=1000, replace=TRUE)
hist(coinToss, breaks=2)
hist(replicate(1000, sum(sample(0:1, size=50, replace=TRUE))))

hist(rbinom(1000, 20, .5), breaks=50)

#apply
str(apply)
m <- matrix(rnorm(200), nrow=10)
apply(m, 1, mean) #1 row
apply(m, 1, sd)
apply(m, 2, mean)
apply(m, 2, quantile, probs=c(.25, .75))

#Reading Excel Workbook
install.packages("XLConnect", dependencies = TRUE)
library(XLConnect)
setwd("C:/Users/aniverb/Documents/Grad School/JHU/Intro to R/2016 Materials/Files")

arms_wb <- loadWorkbook("Arms imports.xlsx")
arms <- readWorksheet(arms_wb, sheet="Data", header = TRUE)
arms <- readWorksheet(arms_wb, sheet="Data", header = TRUE, check.names=FALSE)
head(arms)

apply(arms[2:ncol(arms)], 1, mean, na.rm=TRUE)
apply(arms[2:ncol(arms)], 2, mean, na.rm=TRUE)
sapply(arms[2:ncol(arms)], mean, na.rm=TRUE)

bpd_wb <- loadWorkbook("BPD_Arrests_2012.xls")
bpd <- readWorksheet(bpd_wb, sheet="BPD Arrests 2012", header=TRUE)
head(bpd)

#plotting arms data
head(arms[2:ncol(arms)])
arms[1, 2:ncol(arms)]
armsAfghanistan <- t(arms[1, 2:ncol(arms)])
plot(row.names(armsAfghanistan), armsAfghanistan, xlab="Year", ylab="US dollars spent", main="Arms Imports")
armsAlbania <- t(arms[2, 2:ncol(arms)])
points(row.names(armsAlbania), armsAlbania, col="blue")

armsIran <- t(arms[arms[1]=="Iran", 2:ncol(arms)])
plot(row.names(armsIran), armsIran, xlab="Year", ylab="US dollars spent", main="Arms Imports", type="l")
lines(row.names(armsAfghanistan), armsAfghanistan, col="blue")

armsUS <- t(arms[arms[1]=="United States", 2:ncol(arms)])
lines(row.names(armsUS), armsUS, col="red")

#split
data("airquality")
s <- split(airquality, airquality$Month)
s$`6`
s$'6'
subset(airquality, Month==6)
s$'7'
subset(airquality, Month==7)
airquality[airquality["Month"]==6,]
airquality[airquality["Month"]==7,]

sapply(s, function(x){colMeans(x[,2:4])})
