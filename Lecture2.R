#review if/else statment
x <- 3
if(x==2){
  print("x is equal to 2.")
}else if (x==3){
  print("x is equal to 3.")
}else if (x==4){
  print("x is equal to 4.")
}else {print("x is not equal to 2, 3, or 4.")
}

x <- 5 #rerunning conditional above gives "x is not equal to 2, 3, or 4."

#for loops
for(i in 1:5){
  print(i)
}

number_words <- c("one", "two", "three", "four", "five")

for (i in number_words){
  print (i)
}

#while loop
x <- -4
while (x<1){
  print(x)
  x <- x+1
}

#controlling loops
for(i in 8:10000){
  print(i)
  if (i>=10){
    break
  }
}

for(i in 5:7){
  if (i==6){
    next
  }
  print(i)
}

#functions
i_return_three <- function(){
  3
}

i_return_three()

add_one <- function(x){
  x+1
}
add_one(4)

y <- 100
arg_y <- function(y){
  y+1
}

arg_y(4)
arg_y(y)

add_x_y_z <- function(x,y,z){
  x+y+z
}

add_x_y_z(3,6,9)

print_a_then_b <- function(a="a", b="b"){
  print(a)
  print(b)
}

print_a_then_b()
print_a_then_b("hello", "world!")
print_a_then_b(b="world",a="hello")

#Working with Data
setwd("C:/Users/aniverb/Documents/Grad School/JHU/Intro to R/2016 Material/Files")
getwd()
diabetic=read.csv("diabetic_data.csv")
test=read.table("test.txt")

data("airquality") #data built into R
head(airquality, 10)
class(airquality)
ncol(airquality)
nrow(airquality)
dim(airquality)
str(airquality)
summary(airquality)

#working with missing data
mean(airquality$Ozone, na.rm = TRUE)
is.na(head(airquality$Ozone))
is.nan(head(airquality$Ozone))
median(airquality$Ozone, na.rm = TRUE)
range(airquality$Ozone, na.rm = TRUE)
