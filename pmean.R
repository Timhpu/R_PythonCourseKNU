setwd("E:\\University\\Master\\R+RStudio\\University\\rprog\\specdata")
read_files <- function(directory, id=1:332) {
  # locate the files
  files <- list.files(directory, full.names=T)[id]
  data_list <- lapply(files, read.csv)
  
  return (data_list)
}

pmean <- function(directory, pollutant, id=1:332) {
  data_list <- read_files(directory, id)
  
  
  #merge list of data.frames into one
  data <- do.call(rbind, data_list)
  
  
  result <- mean(data[,pollutant], na.rm = TRUE)
  return (result)
}

complete <- function(directory, id) {
  data_list <- read_files(directory, id)
  
  
  nobs <- sapply(data_list, function(x) { sum(complete.cases(x)) })
  
  
  result <- data.frame(id, nobs)
  
  return (result)
}

corr <- function(directory, threshold = 0) {
  data_list <- read_files(directory)
  
  
  data_list <- lapply(data_list, function(x) { x[complete.cases(x),] })
  filtered_list <- Filter(function(x) { nrow(x) > threshold }, data_list)
  if (length(filtered_list) == 0) {
    return (c())
  }
  
  
  cors <- sapply(filtered_list, function(x) { cor(x[,'sulfate'], x[,'nitrate']) })
  return (cors)
  
}
