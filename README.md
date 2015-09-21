README run_analysis.R
Author: JJ Diefenbach

This file describes the procedures used in fun_analysis.R
The goal is to produce a tidy data set of mean data of relevant measurement variables from the Human Activity Recognition Using Smartphones Data Set
The original data is split up in test data (9 subjects) and training data (21 subjects).

INPUT

All input variables are collected from the UCI Machine Learning Repository.
The variables are found in the Human Activity Recognition Using Smartphones Data Set.

The following variables are used as input and thus read into R:
* features.txt                  : the names of the different measurement variables (561 variables)
* activity_labels.txt           : labels the activity number to the actual activity (1=Walking, 2=Walking upstairs, 3=Walking downstairs, 4=Sitting, 5=Standing, 6=Laying)
* subject_test.txt              : connects the subject id number to the measurement (test results)
* subject_train.txt             : connects the subject id number to the measurement (training results)
* y_test.txt                    : connects the measurements to an activity number (1-6) for the test results
* y_train.txt                   : connects the measurements to an activity number (1-6) for the training results
* X_test.txt                    : actual testdata for different measurements (2947 x 561)
* X_train.txt                   : actual testdata for different measurements (7352 x 561)

Further information on the measurement variables is found in the codebook

CREATE A LARGE DATASET COMBINING INPUT

After the input is read into variables, a large dataset (named totalSet) is created by combining the test and trainingsdata.
The following steps are used:

1. For both test and trainingsdata the testdata (X_test.txt, X_train.txt) is combined with subject id number and activity number (testSet, trainSet)
2. The test and trainingsdata are combined into one dataset (totalSet)
3. The columns containing subject id number and activity are changed from numeric into factor variables

SELECT ONLY MEASUREMENTS CONTAINING MEAN OR STD INFO

From the total of 561 measurement variables only 68 contain either a mean value or std. value. 
These are selected using the select() command and put into a dataframe called tidySet

nb. variables containing meanFreq or angle(mean(...)) are not included in tidySet

CALCULATE MEAN FOR EACH MEASUREMENT BY SUBJECT AND ACTIVITY

In the final step the mean is calculated for each measurement value grouped by subject id and activity.
This leads to a dataframe meanData consisting of 180 rows (30 subjects x 6 activities) containing the mean values for the measurements
