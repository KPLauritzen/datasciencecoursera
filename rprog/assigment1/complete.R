complete <- function(directory, id = 1:332) {
  ## Write a function that reads a directory full of files and reports the
  ## number of completely observed cases in each data file. The function should
  ## return a data frame where the first column is the name of the file and the
  ## second column is the number of complete cases. A prototype of this function
  ## follows
  files <- list.files(directory)

  total = data.frame()
  for(i in id){
    data <- read.csv(file.path(directory, files[i]), header=TRUE)
    n_complete <- sum(!apply(data, 1, anyNA))
    # I apply anyNA() to each row. This returns TRUE if there is an NA
    # Then I use bool NOT on that to get TRUE for rows without NA.
    # Then I sum that because TRUE == 1
    total = rbind(total, data.frame(id = i, nobs = n_complete))
  }
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  total
}