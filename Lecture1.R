#R as a calculator
#Numeric/Int
3+2
3-2
3*2
3/2
3^2
3%%2

#logical/boolean
3>10
9>=8
-3<6
a <- (4<=23)
.003==0.003
b <- (28==43)
TRUE&&FALSE
TRUE||FALSE
TRUE&&TRUE
FALSE&&FALSE
TRUE||TRUE
FALSE||FALSE
!FALSE
TRUE!=FALSE
TRUE==FALSE
3<4&&5<=10

#Character/string
"I am a string"
c="I am a string"
d <- 'I am also a string'
c==d
c!=d
"a"=="b"

#Data Structures
#vectors
c(1,2,3)
1:3
vector1=1:3
vector2=4:6
vector1+vector2
vector1*vector2
vector1[2]
vector2[2:3]
rep(c(1,2), time=5)
rep(-3:2,3)
seq(1,5)
seq(1,5, by=.2)

#matrices
matrix1 <- matrix(1:9, nrow=3)
matrix2 <- matrix(2:5, nrow=2)
matrix1*matrix1
matrix1%*%matrix1
matrix2[2,1]

'i 
am
a docstring, a comment spanning multiple lines'

#list
list1 <- list(animal1 = "cat",animal2 = "dog", number1 = 1, number2 = 2)
list1[["animal2"]]
list1$animal2 <- "cat"
df=data.frame(numbers=9:12, truths=rep(TRUE,4), strings=c("Mary", "had a", "little", "lamb."), stringsAsFactors = FALSE) #note the addition of stringsAsFactors argument
df$strings[3]
df[3,3] #same as above
df[2,2]=3
df[2,]
df[,1]

#Flow Control (i.e. Conditional)
#if statement
if(TRUE){
  print("The expression above evaluates to TRUE.")
}
if(FALSE){
  print("The expression above evaluates to TRUE.")
}

#if/else statement
if(FALSE){
  print("The expression above evaluates to TRUE.")
} else{
  print("The expression evaluates to FALSE")
}

if(number1!=number2){
  print("The expression above evaluates to TRUE.")
} else{
  print("The expression evaluates to FALSE")
}

x <- 5
if (x==2){
  print("x is equal to 2.")
  } else if (x<2){
    print("x is less than 2.")
  } else if (x>5){
    print("x is greater than 5.")
    } else{
  print("x is greater than 2 but less than or equal to 5.") #added "or equal" to else block to make statement fully correct
  }

