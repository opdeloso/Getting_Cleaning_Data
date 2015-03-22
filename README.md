# Getting_Cleaning_Data

Repository to contain the project of the course "Getting and Cleaning Data"

Original data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Date             : 20/03/2015

As indicated in the Course Project instructions, original unzipped data have to be in the working directory (in the folder "UCI HAR Dataset").

Execute the script run_analysis.R, which performs the following transformations:

* The training and the test sets are merged to create one data set.
* The measurements on the mean and standard deviation for each measurement is extracted. 
* Descriptive activity names are used to name the activities in the data set
* Descriptive variable names are used. 
* From the data before, a new data set is created with the average of each variable for each activity and each subject.

The result is the tidy data set dataset.txt, that appears in the repository. 
