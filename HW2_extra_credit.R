myLapply <- function(df, func){
  stat <- list()
  col <- names(df)
  for (i in 1:ncol(df)){
    stat[col[i]]=func(df[,i])
  }
  return(stat)
}

myLapply(subDiabetic, mean)