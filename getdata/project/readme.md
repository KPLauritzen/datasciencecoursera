# README
By Kasper Primdal Lauritzen

For the Course Project in the Coursera class "Getting and Cleaning Data", completed in October 2015

## Usage
Unpack the [provided dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and set the working dir to unpacked folder (`setwd("./UCI HAR Dataset")`).
From here, run the `run_analysis.R` script. 
This requires the following files:

	features.txt
	activity_labels.txt
	test/y_test.txt
	test/subject_test.txt
	train/y_train.txt
	train/subject_train.txt
	
It outputs the tidy data set:
	
	tidy.txt
	
The package `dplyr` was used (v 0.4.3) with `R` version 3.1.3