# 1. Merges the training and the test sets to create one data set

subjectTest <- read.csv("./UCI HAR Dataset/test/subject_test.txt", 
                        sep = " ", 
                        header = FALSE)
yTest       <- read.table("./UCI HAR Dataset/test/y_test.txt") 
xTest       <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainData   <- cbind(subjectTest, yTest, xTest)

subjectTrain <- read.csv("./UCI HAR Dataset/train/subject_train.txt", 
                         sep = " ", 
                         header = FALSE)
yTrain       <- read.table("./UCI HAR Dataset/train/y_train.txt")
xTrain       <- read.table("./UCI HAR Dataset/train/X_train.txt")
testData     <- cbind(subjectTrain, yTrain, xTrain)

fullData <- rbind(trainData, testData)

# 2. Extracts only the measurements on the mean and standard deviation for 
#    each measurement.
library(dplyr)

features <- read.csv("./UCI HAR Dataset/features.txt", sep = " ", 
                     header = FALSE,
                     stringsAsFactors = FALSE)

varName <- as.character(features$V2)
varName <- c("subjectId", "activityId", varName)
varName <- make.names(varName, unique = TRUE)
colnames(fullData) <- varName

data1 <- select(fullData, subjectId, activityId)
data2 <- select(fullData, contains("mean"))
data3 <- select(fullData, contains("std"))

selectData <- cbind(data1, data2, data3)


# 3. Uses descriptive activity names to name the activities in the data set

activityLabels <- read.csv("./UCI HAR Dataset/activity_labels.txt", sep = " ", header = FALSE)
selectData$activityLabel[selectData$activityId == 1] <- "WALKING"
selectData$activityLabel[selectData$activityId == 2] <- "WALKING_UPSTAIRS"
selectData$activityLabel[selectData$activityId == 3] <- "WALKING_DOWNSTAIRS"
selectData$activityLabel[selectData$activityId == 4] <- "SITTING"
selectData$activityLabel[selectData$activityId == 5] <- "STANDING"
selectData$activityLabel[selectData$activityId == 6] <- "LAYING"


# 4. Appropriately labels the data set with descriptive variable names

selectData <- select(selectData, -activityId)
newNames <- names(selectData)
newNames <- gsub("...", "_", newNames, fixed = TRUE)
newNames <- gsub("..", "", newNames, fixed = TRUE)
newNames <- gsub("Mean.", "Mean", newNames, fixed = TRUE)
colnames(selectData) <- newNames


# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
library(reshape2)

selectDataMelt <- melt(selectData, id = c("subjectId", "activityLabel"))
tidyResult <- dcast(selectDataMelt, subjectId + activityLabel ~ variable, mean)

write.table(tidyResult, file = "dataset.txt", row.name = FALSE)
