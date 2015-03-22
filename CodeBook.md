## CODE BOOK - ACCELEROMETERS SAMSUNG GALAXY S - MARCH 2015

### Data description

	From  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip getted
	20/03/2015, with the data of accelerometer and gyroscope by 30 subjects, the mean and standard deviation
	for each measurement are extracted, grouping by subject and activity.

### Transformations

    * The training and the test sets are merged to create one data set.
    * The measurements on the mean and standard deviation for each measurement is extracted. 
    * Descriptive activity names are used to name the activities in the data set
    * Descriptive variable names are used. 
    * From the data before, a new data set is created with the average of each variable for each activity and each subject.
	
	 The details of each step can be found in the script CourseProject.R

### Variables description

	Notes:
		Prefix t references time domain
		Prefix f references Fast Fourier Transformations (FFT)
		The magnitudes of acceleration are indicated in m/s2 and the angles in radians.
	
	* subjectId	num
	    ID of the person performing the activity

	* activityLabel	chr
		Activity label:
			WALKING
			WALKING_UPSTAIRS
			WALKING_DOWNSTAIRS
			SITTING
			STANDING
			LAYING
			
	* tBodyAcc.mean_X	num
		Mean value of X-component of the body acceleration.
		
	* tBodyAcc.mean_Y	num
		Mean value of Y-component of the body acceleration.
	
	* tBodyAcc.mean_Z	num
		Mean value of Z-component of the body acceleration.

	* tGravityAcc.mean_X	num
		Mean value of X-component of the gravity acceleration.

	* tGravityAcc.mean_Y	num
		Mean value of Y-component of the gravity acceleration.
	
	* tGravityAcc.mean_Z	num
		Mean value of Z-component of the gravity acceleration.

	* tBodyAccJerk.mean_X	num
		Mean value of X-component of the body acceleration (Jerk signal).
		
	* tBodyAccJerk.mean_Y	num
		Mean value of Y-component of the body acceleration (Jerk signal).
	
	* tBodyAccJerk.mean_Z	num
		Mean value of Z-component of the body acceleration (Jerk signal).
		
	* tBodyGyro.mean_X	num
		Mean value of X-component of the body gyro acceleration.
	
	* tBodyGyro.mean_Y	num
		Mean value of Y-component of the body gyro acceleration.
	
	* tBodyGyro.mean_Z	num
		Mean value of Z-component of the body gyro acceleration.
 
	* tBodyGyroJerk.mean_X	num
		Mean value of X-component of the body gyro acceleration (Jerk signal).
	
	* tBodyGyroJerk.mean_Y	num
		Mean value of Y-component of the body gyro acceleration (Jerk signal).
	
	* tBodyGyroJerk.mean_Z	num
		Mean value of Z-component of the body gyro acceleration (Jerk signal).
	
	* tBodyAccMag.mean num
		Mean value of the body acceleration magnitude.
		
	* tGravityAccMag.mean num
		Mean value of the gravity acceleration magnitude
	
	* tBodyAccJerkMag.mean num
		Mean value of the body acceleration magnitude (Jerk signal).
	
	* tBodyGyroMag.mean num
		Mean value of the body gyro  acceleration magnitude.
	
	* tBodyGyroJerkMag.mean num
		Mean value of the body gyro  acceleration magnitude (Jerk signal).
 
	* fBodyAcc.mean_X	num
		Mean value of X-component of the body acceleration (FFT).
		
	* fBodyAcc.mean_Y	num
		Mean value of Y-component of the body acceleration (FFT).
	
	* fBodyAcc.mean_Z	num
		Mean value of Z-component of the body acceleration (FFT).
		
	* fBodyAcc.meanFreq_X	num
		Mean value of X-component of the frequency component of the body acceleration (FFT).
		
	* fBodyAcc.meanFreq_Y	num
		Mean value of Y-component of the frequency component of the body acceleration (FFT).
	
	* fBodyAcc.meanFreq_Z	num
		Mean value of Z-component of the frequency component of the body acceleration (FFT).	
 
	* fBodyAccJerk.mean_X	num
		Mean value of X-component of the body acceleration (Jerk signal and FFT).
		
	* fBodyAccJerk.mean_Y	num
		Mean value of Y-component of the body acceleration (Jerk signal and FFT).
	
	* fBodyAccJerk.mean_Z	num
		Mean value of Z-component of the body acceleration (Jerk signal and FFT).
 
	* fBodyAccJerk.meanFreq_X	num
		Mean value of X-component of the frequency component of the body acceleration (Jerk signal and FFT).
		
	* fBodyAccJerk.meanFreq_Y	num
		Mean value of Y-component of the frequency component of the body acceleration (Jerk signal and FFT).
	
	* fBodyAccJerk.meanFreq_Z	num
		Mean value of Z-component of the frequency component of the body acceleration (Jerk signal and FFT).
 
	* fBodyGyro.mean_X	num
		Mean value of X-component of the body gyro acceleration (FFT).
	
	* fBodyGyro.mean_Y	num
		Mean value of Y-component of the body gyro acceleration (FFT).
	
	* fBodyGyro.mean_Z	num
		Mean value of Z-component of the body gyro acceleration (FFT). 
 
	* fBodyGyro.meanFreq_X	num
		Mean value of X-component of the frequency component of the body gyro acceleration (FFT).
	
	* fBodyGyro.meanFreq_Y	num
		Mean value of Y-component of the frequency component of the body gyro acceleration (FFT).
	
	* fBodyGyro.meanFreq_Z	num
		Mean value of Z-component of the frequency component of the body gyro acceleration (FFT).
 
	* fBodyAccMag.mean num
		Mean value of the body acceleration magnitude (FFT).
		
	* fBodyAccMag.meanFreq 
		Mean value of the body acceleration of the frequency component magnitude (FFT).
		
	* fBodyBodyAccJerkMag.mean num
		Mean value of the body acceleration magnitude (Jerk signal and FFT).
		
	* fBodyBodyAccJerkMag.meanFreq 
		Mean value of the body acceleration of the frequency component magnitude (Jerk singal and FFT).	
		
	* fBodyGyroMag.mean num
		Mean value of the body gyro  acceleration magnitude (FFT).
	
	* fBodyBodyGyroMag.meanFreq num
		Mean value of the body gyro  acceleration of the frequency component magnitude (FFT).	
	
	* fBodyGyroJerkMag.mean num
		Mean value of the body gyro  acceleration magnitude (Jerk signal and FFT).	
	
	* fBodyBodyGyroJerkMag.meanFreq num
		Mean value of the body gyro  acceleration of the frequency component magnitude (Jerk signal and FFT).			
 
	* angle.tBodyAccMeangravity num
		Mean value of the angle of the body acceleration gravity.
	
	* angle.tBodyAccJerkMeangravityMean num
		Mean value of the angle of the body acceleration gravity (Jerk signal).	
 
	* angle.tBodyGyroMeangravityMean num
		Mean value of the angle of body gyro gravity.
 
	* angle.tBodyGyroJerkMeangravityMean num
		Mean value of the angle of body gyro gravity (Jerk signal).
 
	* angle.X.gravityMean num
		Mean value of the X-component of the gravity angle.
 
	* angle.Y.gravityMean num
		Mean value of the Y-component of the gravity angle.
		
	* angle.Z.gravityMean num
		Mean value of the Z-component of the gravity angle.	
 
	* tBodyAcc.std_X	num
		std value of X-component of the body acceleration.
		
	* tBodyAcc.std_Y	num
		std value of Y-component of the body acceleration.
	
	* tBodyAcc.std_Z	num
		std value of Z-component of the body acceleration.

	* tGravityAcc.std_X	num
		std value of X-component of the gravity acceleration.

	* tGravityAcc.std_Y	num
		std value of Y-component of the gravity acceleration.
	
	* tGravityAcc.std_Z	num
		std value of Z-component of the gravity acceleration.

	* tBodyAccJerk.std_X	num
		std value of X-component of the body acceleration (Jerk signal).
		
	* tBodyAccJerk.std_Y	num
		std value of Y-component of the body acceleration (Jerk signal).
	
	* tBodyAccJerk.std_Z	num
		std value of Z-component of the body acceleration (Jerk signal).
	
	* tBodyGyro.std_X	num
		std value of X-component of the body gyro acceleration.
	
	* tBodyGyro.std_Y	num
		std value of Y-component of the body gyro acceleration.
	
	* tBodyGyro.std_Z	num
		std value of Z-component of the body gyro acceleration.
 
	* tBodyGyroJerk.std_X	num
		std value of X-component of the body gyro acceleration (Jerk signal).
	
	* tBodyGyroJerk.std_Y	num
		std value of Y-component of the body gyro acceleration (Jerk signal).
	
	* tBodyGyroJerk.std_Z	num
		std value of Z-component of the body gyro acceleration (Jerk signal).
		
	* tBodyAccMag.std num
		std value of the body acceleration magnitude.
		
	* tGravityAccMag.std num
		std value of the gravity acceleration magnitude
	
	* tBodyAccJerkMag.std num
		std value of the body acceleration magnitude (Jerk signal).
	
	* tBodyGyroMag.std num
		std value of the body gyro  acceleration magnitude.
	
	* tBodyGyroJerkMag.std num
		std value of the body gyro  acceleration magnitude (Jerk signal).
  
	* fBodyAcc.std_X	num
		std value of X-component of the body acceleration (FFT).
		
	* fBodyAcc.std_Y	num
		std value of Y-component of the body acceleration (FFT).
	
	* fBodyAcc.std_Z	num
		std value of Z-component of the body acceleration (FFT).
		
	* fBodyAccJerk.std_X	num
		std value of X-component of the body acceleration (Jerk signal and FFT).
		
	* fBodyAccJerk.std_Y	num
		std value of Y-component of the body acceleration (Jerk signal and FFT).
	
	* fBodyAccJerk.std_Z	num
		std value of Z-component of the body acceleration (Jerk signal and FFT).	
	
	* fBodyGyro.std_X	num
		std value of X-component of the body gyro acceleration (FFT).
	
	* fBodyGyro.std_Y	num
		std value of Y-component of the body gyro acceleration (FFT).
	
	* fBodyGyro.std_Z	num
		std value of Z-component of the body gyro acceleration (FFT). 	
  
	* fBodyAccMag.std num
		std value of the body acceleration magnitude (FFT).
		
	* fBodyBodyAccJerkMag.std num
		std value of the body acceleration magnitude (Jerk signal and FFT).
			
	* fBodyGyroMag.std num
		std value of the body gyro  acceleration magnitude (FFT).
	
	* fBodyGyroJerkMag.std num
		std value of the body gyro  acceleration magnitude (Jerk signal and FFT).	
	
	