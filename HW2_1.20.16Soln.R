#Lapply and Sapply Reworked

setwd("C:/Users/aniverb/Documents/Grad School/JHU/Intro to R/2016 Materials/Files")#your file path
diabetic <- read.csv("diabetic_data.csv")
subDiabetic <- diabetic[13:15]
sapply(subDiabetic, mean)

meanLapply <- function(df){
  means <- list()
  col <- names(df)
  for (i in 1:ncol(df)){
    means[col[i]]=mean(df[,i])
  }
  return(means)
}

meanLapply(subDiabetic)

#OR

meanSapply <- function(df){
  vec <- c()
  for (i in 1:ncol(df)){
    col <- df[[names(df)[i]]]
    vec[i] <- mean(col)
  }
  new_df <- data.frame(Column=names(df), Mean=vec) #rbind fine too
  print(new_df)
}

meanSapply(subDiabetic)

#OR

meanVector <- function(df){
  for (i in names(df)){
    col <- df[[i]]
    vector <- c(i, mean(col))
    print(vector)
  }
}

meanVector(subDiabetic)

#what if sapply(subDiabetic, sd)? what needs to change in our function to make it truly be an sapply or lapply replacement?
