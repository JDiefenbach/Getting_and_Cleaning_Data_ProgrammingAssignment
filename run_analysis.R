## This R script does the following:
## 1. Reads data from the Human Activity Recognition Using Smartphones Data Set of UCI
## 2. Combines the test and training data
## 3. Selects only the mean and std. measurement variables (68 variables)
## 4. Calculates the mean of the selected variables for every subject and every activity (180 x 68)

library(dplyr)

## Read the measurement names, activity names, test subjects labels, and test subject activities 
measurementNames <- read.table("features.txt")
activityNames <- read.table("activity_labels.txt")
subjectTest <- read.table("subject_test.txt", col.names = "Subject")
subjectTrain <- read.table("subject_train.txt", col.names = "Subject")
activityTest <- read.table("y_test.txt", col.names = "Activity")
activityTrain <- read.table("y_train.txt", col.names = "Activity")

## Read the test and training data, use the measurement names as column names
testSet <- cbind(subjectTest, activityTest, read.table("X_test.txt", col.names = measurementNames[,2]))
trainSet <- cbind(subjectTrain, activityTrain, read.table("X_train.txt", col.names = measurementNames[,2]))

##Create one large set combining test and training data and rename the activities using the descriptive activity names
totalSet <- rbind (testSet, trainSet)
totalSet <- within(totalSet, Activity <- factor(Activity, labels = activityNames[,2]))
totalSet <- within(totalSet, Subject <- factor(Subject))

## Select only the columns with mean and standard deviation
tidyData <- select(totalSet, Subject, Activity, contains("mean", ignore.case = FALSE), contains("std"), - contains("meanFreq"))

## Create second dataset with the average of each variable in it
groupData <- group_by(tidyData, Subject, Activity)
meanData <- summarise_each(groupData, "mean")

## Write meanData to a .txt file
write.table(meanData, "Tidy_data.txt", row.names = FALSE)