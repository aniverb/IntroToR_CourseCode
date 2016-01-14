#Programming Challenge 1/13/16 - Solution
#other approaches also possible

#1
print_int1 <- function(){
    print(1:100)
}

print_int1()

#OR

print_int1 <- function(){
  for(i in 1:100){
    print(i)
  }
}

print_int1()

#2
print_int2 <- function(){
  for(i in 1:100){
    if(i %% 3 == 0 && i %% 5 == 0){
      print("FizzBuzz")
    } else if(i %% 3 == 0){
      print("Fizz")
    } else if(i %% 5 == 0){
      print("Buzz")
    } else {
      print(i)
    }
  }
}

print_int2()

#OR

print_int2 <- function(){
  for(i in 1:100){
    div_by_3 <- i %% 3 == 0
    div_by_5 <- i %% 5 == 0
    if(div_by_3 && div_by_5){
      print("FizzBuzz")
    } else if(div_by_3){
      print("Fizz")
    } else if(div_by_5){
      print("Buzz")
    } else {
      print(i)
    }
  }
}
print_int2()

#3
print_int3 <- function(start, end){
  for(i in start:end){
    if(i %% 3 == 0 && i %% 5 == 0){
      print("FizzBuzz")
    } else if(i %% 3 == 0){
      print("Fizz")
    } else if(i %% 5 == 0){
      print("Buzz")
    } else {
      print(i)
    }
  }
}

print_int3(23,132) #example call

#OR

print_int3 <- function(start, end){
  for(i in start:end){
    div_by_3 <- i %% 3 == 0
    div_by_5 <- i %% 5 == 0
    if(div_by_3 && div_by_5){
      print("FizzBuzz")
    } else if(div_by_3){
      print("Fizz")
    } else if(div_by_5){
      print("Buzz")
    } else {
      print(i)
    }
  }
}

print_int3(23,132) #example call