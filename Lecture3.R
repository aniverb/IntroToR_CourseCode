#reading data expanded
setwd("C:/Users/aniverb/Documents/Grad School/JHU/Intro to R/2016 Materials/Files")
test1 <- read.table("test.txt", header = TRUE)
test2 <- read.table("test.txt", col.names = c("Col1", "Col2", "Col3", "Col4"))

diabetic1 <- read.csv("diabetic_data.csv")
diabetic1$gender[4]
diabetic <- read.csv("diabetic_data.csv", stringsAsFactors = FALSE)
diabetic$gender[4]

subDiabetic1 <- head(diabetic, 30) #same as line 12
subDiabetic <- diabetic[1:30,]
factor(subDiabetic$gender)

#functions revisted
recode <- function(){
  gender <- c()
  for (i in 1:nrow(subDiabetic)){
    if (subDiabetic$gender[i]=="Female"){
      gender[i]="F"
    }else{
      gender[i]="M"
    }
  }
  subDiabetic[4]=gender
  print(subDiabetic)
}

recodeDiab <- recode() 

#writing data
write.csv(recodeDiab, "recodeDiab.csv")
write.csv(recodeDiab, "recodeDiab2.csv", row.names = FALSE)
write.table(recodeDiab, "recodeDiab3.txt", row.names = FALSE)

#Visualizaton/Plots
#airquality
data("airquality")
View(airquality)

#scatterplot
plot(airquality[["Temp"]])
june_airquality <- airquality[airquality[["Month"]]==6,]
june_airquality2 <- subset(airquality, Month==6)
plot(june_airquality$Temp, xlab = "Day", ylab = "Temperature", main="Temperature over Time")
plot(june_airquality$Day, june_airquality$Temp)

#line graph
plot(june_airquality$Day, june_airquality$Temp, type="l") 
plot(june_airquality$Day, june_airquality$Temp, type="l", xlab = "Day", ylab="Temperature", main = "Temperature over Time")

july_airquality <- subset(airquality, Month==7)
lines(july_airquality$Day, july_airquality$Temp, type="l", col="red")

legend("bottomright", c("June", "July"), lty = 1, col = c("black", "red"), cex=.55)

#back to diabetic data
#bar graph
View(diabetic)
count <- table(diabetic[["age"]])
barplot(count)
barplot(count, xlab = "Age", ylab = "count", main="Patients in Various Age Groups")
barplot(count, xlab = "Age", ylab = "count", main="Patients in Various Age Groups", col="turquoise")
barplot(count, xlab = "Age", ylab = "count", main="Patients in Various Age Groups", col=factor(1:10))
barplot(count, xlab = "Age", ylab = "count", main="Patients in Various Age Groups", col=factor(1:10), horiz = TRUE)

#histograms
hist(diabetic$time_in_hospital)
hist(diabetic$time_in_hospital, breaks=30)
hist(diabetic$time_in_hospital, breaks=30, xlab = "Number of Days", main="Histogram of Time in Hospital")

#boxplot
fDiabetic <- diabetic[diabetic[["gender"]]=="Female",]
fDiabetic2 <- subset(diabetic, gender=="Female") #another way of indexing
mDiabetic <- subset(diabetic, gender=="Male")
boxplot(fDiabetic$time_in_hospital)
boxplot(fDiabetic$time_in_hospital, mDiabetic$time_in_hospital, names = c("Female", "Male"), ylab="Number of Days in Hospital")

#boxplot statistics
s_f_Diab <- summary(fDiabetic$time_in_hospital)
s_f_Diab
s_m_Diab <- summary(mDiabetic$time_in_hospital)
s_m_Diab
rbind(s_f_Diab, s_m_Diab)
cbind(s_f_Diab, s_m_Diab)

#plot of multiple graphs
par(mfrow=c(1,2))
hist(diabetic$time_in_hospital, breaks=30, xlab = "Number of Days", main="Histogram of Time in Hospital")
boxplot(fDiabetic$time_in_hospital, mDiabetic$time_in_hospital, names = c("Female", "Male"), ylab="Number of Days in Hospital")
par(mfrow=c(1,1))