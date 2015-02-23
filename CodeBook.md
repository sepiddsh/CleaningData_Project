# Code book

## subject
An integer taking values in {a,2,3, ... , 30}. Each of these integers represents a subject (person) of the experiment. 

## activity	
A factor with 6 levels:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

## tBodyAcc-mean()-X
Note 1: Each of the variables, from here on, is the average of the corresponding variable for the suject-activity pair. 
Note 2: Accelerometer => 3-axial linear acceleration data (Acc) : "Body" and "Gravity" motions separated (by filtering using a Butterworth low-pass filter) , t and f show the time and frequency domain data. X and Y and Z show different axial data. And finally "mean()" and "std()" show mean value and standard deviation respectively.
        Gyroscope => 3-axial angular velocity data 
        
        With Notes 1 and 2 in mind all the variable names from here on could be decoded. Some examples are given.
In this case: The mean of time domain X axis component of body acceleration AVERAGED OVER all data for each subject-activity pair.

## tBodyAcc-mean()-Y	
The mean of time domain Y axis component of body acceleration AVERAGED OVER all data for each subject-activity pair. 

## tBodyAcc-mean()-Z	
The mean of time domain Z axis component of body acceleration AVERAGED OVER all data for each subject-activity pair. 

## tBodyAcc-std()-X	
The standard deviation of time domain X axis component of body acceleration AVERAGED OVER all data for each subject-activity pair. 

## tBodyAcc-std()-Y	
The standard deviation of time domain Y axis component of body acceleration AVERAGED OVER all data for each subject-activity pair. 

## tBodyAcc-std()-Z	
The standard deviation of time domain Z axis component of body acceleration AVERAGED OVER all data for each subject-activity pair. 

## tGravityAcc-mean()-X	
The mean of time domain X axis component of Gravity acceleration AVERAGED OVER all data for each subject-activity pair. 

## tGravityAcc-mean()-Y	
The mean of time domain Y axis component of Gravity acceleration AVERAGED OVER all data for each subject-activity pair. 

## tGravityAcc-mean()-Z	
The mean of time domain Z axis component of Gravity acceleration AVERAGED OVER all data for each subject-activity pair. 

## tGravityAcc-std()-X	
## tGravityAcc-std()-Y	
## tGravityAcc-std()-Z	
## tBodyAccJerk-mean()-X	
## tBodyAccJerk-mean()-Y	
## tBodyAccJerk-mean()-Z	
## tBodyAccJerk-std()-X	
## tBodyAccJerk-std()-Y	
## tBodyAccJerk-std()-Z	
## tBodyGyro-mean()-X	
## tBodyGyro-mean()-Y	
## tBodyGyro-mean()-Z	
## tBodyGyro-std()-X	
## tBodyGyro-std()-Y	
## tBodyGyro-std()-Z	
## tBodyGyroJerk-mean()-X	
## tBodyGyroJerk-mean()-Y	
## tBodyGyroJerk-mean()-Z
## tBodyGyroJerk-std()-X	
## tBodyGyroJerk-std()-Y	
## tBodyGyroJerk-std()-Z	
## tBodyAccMag-mean()	
## tBodyAccMag-std()	
## tGravityAccMag-mean()	
## tGravityAccMag-std()	
## tBodyAccJerkMag-mean()	
## tBodyAccJerkMag-std()	
## tBodyGyroMag-mean()	
## tBodyGyroMag-std()	
## tBodyGyroJerkMag-mean()	
## tBodyGyroJerkMag-std()	
## fBodyAcc-mean()-X	
## fBodyAcc-mean()-Y	
## fBodyAcc-mean()-Z	
## fBodyAcc-std()-X	
## fBodyAcc-std()-Y	
## fBodyAcc-std()-Z	
## fBodyAccJerk-mean()-X	
## fBodyAccJerk-mean()-Y	
## fBodyAccJerk-mean()-Z	
## fBodyAccJerk-std()-X	
## fBodyAccJerk-std()-Y	
## fBodyAccJerk-std()-Z	
## fBodyGyro-mean()-X	
## fBodyGyro-mean()-Y	
## fBodyGyro-mean()-Z	
## fBodyGyro-std()-X	
## fBodyGyro-std()-Y	
## fBodyGyro-std()-Z	
## fBodyAccMag-mean()	
## fBodyAccMag-std()	
## fBodyAccJerkMag-mean()	
## fBodyAccJerkMag-std()	
## fBodyGyroMag-mean()	
## fBodyGyroMag-std()	
## fBodyGyroJerkMag-mean()	
## fBodyGyroJerkMag-std()
