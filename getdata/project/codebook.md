# Codebook
By Kasper Primdal Lauritzen

For the Course Project in the Coursera class "Getting and Cleaning Data", completed in October 2015

## Requirements
From the assignment description there are several requirements that must be met for the tidy data set

1. Training and test data should be merged
2. Only the means and standard deviations should be included
3. The activities should have descriptive names
4. The variables should have descriptive names
5. The tidy data set should show the means for all variables, for all combinations of activities and subjects. 

## Transformations
I named the variables after the names listed in `features.txt`, removing "()" and turning everything lowercase (Fulfilling requirement 4).

I dropped all variables that did not include the substring `mean` or `std` (Fulfulling requirement 2)

I added `activity` as a categorical variable, and read the names of each activity from `activity_labels.txt` (Fulfilling requirement 3).

I added `subject` as an ordinal variable. 

I merged the `train` and `test` data sets by rows (Fulfulling requirement 1).

For all combinations of `subject` (30 posibilities) and `activity` (6 posibilities) I computed the mean of all other variables (a total of 30 * 6 = 180 observations). This was outputted as the tidy data set (Fulfilling requirement 5).

## Variables
There are 88 variables in the tidy data set:

1. `subject`: The person who was observed during the experiment. Can take integer values from 1 to 30.
2. `activity`: What was done during the experiment. Can take the values: `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING` or `LAYING`.

The rest of the variables (3-88) are from the original data set, but transformed to lowercase and parenthesis to improve their names:

- `tbodyacc.mean.x`                     
- `tbodyacc.mean.y`                     
- `tbodyacc.mean.z`                     
- `tbodyacc.std.x`                      
- `tbodyacc.std.y`                      
- `tbodyacc.std.z`                      
- `tgravityacc.mean.x`                  
- `tgravityacc.mean.y`                  
- `tgravityacc.mean.z`                  
- `tgravityacc.std.x`                   
- `tgravityacc.std.y`                   
- `tgravityacc.std.z`                   
- `tbodyaccjerk.mean.x`                 
- `tbodyaccjerk.mean.y`                 
- `tbodyaccjerk.mean.z`                 
- `tbodyaccjerk.std.x`                  
- `tbodyaccjerk.std.y`                  
- `tbodyaccjerk.std.z`                  
- `tbodygyro.mean.x`                    
- `tbodygyro.mean.y`                    
- `tbodygyro.mean.z`                    
- `tbodygyro.std.x`                     
- `tbodygyro.std.y`                     
- `tbodygyro.std.z`                     
- `tbodygyrojerk.mean.x`                
- `tbodygyrojerk.mean.y`                
- `tbodygyrojerk.mean.z`                
- `tbodygyrojerk.std.x`                 
- `tbodygyrojerk.std.y`                 
- `tbodygyrojerk.std.z`                 
- `tbodyaccmag.mean`                    
- `tbodyaccmag.std`                     
- `tgravityaccmag.mean`                 
- `tgravityaccmag.std`                  
- `tbodyaccjerkmag.mean`                
- `tbodyaccjerkmag.std`                 
- `tbodygyromag.mean`                   
- `tbodygyromag.std`                    
- `tbodygyrojerkmag.mean`               
- `tbodygyrojerkmag.std`                
- `fbodyacc.mean.x`                     
- `fbodyacc.mean.y`                     
- `fbodyacc.mean.z`                     
- `fbodyacc.std.x`                      
- `fbodyacc.std.y`                      
- `fbodyacc.std.z`                      
- `fbodyacc.meanfreq.x`                 
- `fbodyacc.meanfreq.y`                 
- `fbodyacc.meanfreq.z`                 
- `fbodyaccjerk.mean.x`                 
- `fbodyaccjerk.mean.y`                 
- `fbodyaccjerk.mean.z`                 
- `fbodyaccjerk.std.x`                  
- `fbodyaccjerk.std.y`                  
- `fbodyaccjerk.std.z`                  
- `fbodyaccjerk.meanfreq.x`             
- `fbodyaccjerk.meanfreq.y`             
- `fbodyaccjerk.meanfreq.z`             
- `fbodygyro.mean.x`                    
- `fbodygyro.mean.y`                    
- `fbodygyro.mean.z`                    
- `fbodygyro.std.x`                     
- `fbodygyro.std.y`                     
- `fbodygyro.std.z`                     
- `fbodygyro.meanfreq.x`                
- `fbodygyro.meanfreq.y`                
- `fbodygyro.meanfreq.z`                
- `fbodyaccmag.mean`                    
- `fbodyaccmag.std`                     
- `fbodyaccmag.meanfreq`                
- `fbodybodyaccjerkmag.mean`            
- `fbodybodyaccjerkmag.std`             
- `fbodybodyaccjerkmag.meanfreq`        
- `fbodybodygyromag.mean`               
- `fbodybodygyromag.std`                
- `fbodybodygyromag.meanfreq`           
- `fbodybodygyrojerkmag.mean`           
- `fbodybodygyrojerkmag.std`            
- `fbodybodygyrojerkmag.meanfreq`       
- `angle.tbodyaccmean.gravity.`         
- `angle.tbodyaccjerkmean..gravitymean.`
- `angle.tbodygyromean.gravitymean.`    
- `angle.tbodygyrojerkmean.gravitymean.`
- `angle.x.gravitymean.`                
- `angle.y.gravitymean.`                
- `angle.z.gravitymean.` 

The description from `features_info.txt` is included here:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

>gravityMean

>tBodyAccMean

>tBodyAccJerkMean

>tBodyGyroMean

>tBodyGyroJerkMean

Additional information from `README.txt` included with the raw data set:

> Features are normalized and bounded within [-1,1]

Thus, all variables are dimensionless, normalized between -1 and 1. 

## References
- [Coursera class website](https://class.coursera.org/getdata-033/)
- [Original data source](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [Jeff Leek on data sharing](https://github.com/jtleek/datasharing)
- [David Hood with tips for this assignment](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/)
              
