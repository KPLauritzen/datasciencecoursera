pollutantmean <- function(directory, pollutant, id = 1:332) {
  # Write a function named 'pollutantmean' that calculates the mean of a pollutant 
  # (sulfate or nitrate) across a specified list of monitors. 
  # The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. 
  # Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
  # particulate matter data from the directory specified in the 'directory'
  # argument and returns the mean of the pollutant across all of the monitors, 
  # ignoring any missing values coded as NA.

  files <- list.files(directory)
  datalist = data.frame()
  for(i in id){
    data <- read.csv(file.path(directory, files[i]), header=TRUE)
    datalist <- rbind(datalist, data)
  }
  
  mean(datalist[[pollutant]], na.rm = TRUE)

}