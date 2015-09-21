CODEBOOK run_analysis.R
Author: JJ Diefenbach

1. OUTPUT VARIABLES OF run_analysis.R
This part describes the output variables of run_analysis.R

"activitynames"
6 x 2 dataframe, first column: activity number, second column: activity name

"activityTest"
vector of length 2947 with relevant activity number per observation in test data

"activityTrain"
vector of length 7352 with relevant activity number per observation in training data

"groupData"
the total tidy data set (10299 x 68) grouped first by subject id, then by activity

"meanData"
180 x 68 dataframe containing the mean value per measurement for 30 persons and 6 activities

"measurementNames"
561 x 2 dataframe containing the names of different measurements used in the original data set (second column)

"subjectTest"
vector of length 2947 with relevant subject id per observation in test data

"subjectTrain"
vector of length 7352 with relevant subject id per observation in training data

"testSet"
2947 x 563 dataframe containing the test data, combined with subject id and activity number

"tidyData"
10299 x 68 dataframe with the selected mean and std columns

"totalSet"
10299 x 563 dataframe. This is the complete set of data obtained by combining test and training data

"trainSet"
7352 x 563 dataframe containing the training data, combined with subject id and activity number



2. MEASUREMENT VARIABLES IN Tidy_data.txt
This part describes the measurement variables (68 in total), the column names of the output dataframe

"Subject"                     
subject id number (factor variable)
 
"Activity" (factor variable)
1 = Walking
2 = Walking Upstairs
3 = Walking downstairs
4 = Sitting
5 = Standing
6 = Laying

"tBodyAcc.mean...X"
body acceleration in X direction (mean)

"tBodyAcc.mean...Y"
body acceleration in Y direction (mean)
 
"tBodyAcc.mean...Z"           
body acceleration in Z direction (mean)

"tGravityAcc.mean...X"        
gravity acceleration in X direction (mean)

"tGravityAcc.mean...Y"        
gravity acceleration in Y direction (mean)

"tGravityAcc.mean...Z"       
gravity acceleartion in Z direction (mean)

"tBodyAccJerk.mean...X"
body linear acceleration JERK signal in X direction (mean)

"tBodyAccJerk.mean...Y"
body linear acceleration JERK signal in Y direction (mean)

"tBodyAccJerk.mean...Z"
body linear acceleration JERK signal in Z direction (mean)

"tBodyGyro.mean...X"
body angular acceleration in X direction (mean)

"tBodyGyro.mean...Y"          
body angular acceleration in Y direction (mean)

"tBodyGyro.mean...Z"
body angular acceleration in Z direction (mean)

"tBodyGyroJerk.mean...X"
body angular acceleration JERK signal in X direction (mean)

"tBodyGyroJerk.mean...Y"
body angular acceleration JERK signal in Y direction (mean)

"tBodyGyroJerk.mean...Z"
body angular acceleration JERK signal in Z direction (mean)

"tBodyAccMag.mean.." 
magnitude of body acceleration (mean)

"tGravityAccMag.mean.."
magnitude of gravity acceleration (mean)

"tBodyAccJerkMag.mean.."
magnitude of body acceleration JERK (mean)

"tBodyGyroMag.mean.."
magnitude of body angular acceleration (mean)

"tBodyGyroJerkMag.mean.."
magnitude of body angular acceleration JERK (mean)

"fBodyAcc.mean...X"
FFT of body acceleration in X direction (mean)

"fBodyAcc.mean...Y"          
FFT of body acceleration in Y direction (mean)

"fBodyAcc.mean...Z"
FFT of body acceleration in Z direction (mean)

"fBodyAccJerk.mean...X"
FFT of body acceleration in X direction JERK (mean)

"fBodyAccJerk.mean...Y"       
FFT of body acceleration in Y direction JERK (mean)

"fBodyAccJerk.mean...Z"      
FFT of body acceleration in Z direction JERK (mean)

"fBodyGyro.mean...X"
FFT of angular acceleration in X direction (mean)

"fBodyGyro.mean...Y"
FFT of angular acceleration in Y direction (mean)

"fBodyGyro.mean...Z"
FFT of angular acceleration in Z direction (mean)

"fBodyAccMag.mean.."
FFT of magnitude of body accerlation (mean)

"fBodyBodyAccJerkMag.mean.."
FFT of magnitude of body acceleration JERK (mean)

"fBodyBodyGyroMag.mean.."     
FFT of magnitude of angular acceleration (mean)

"fBodyBodyGyroJerkMag.mean.." 
FFT of magnitued of angular acceleration JERK (mean)

"tBodyAcc.std...X"
body acceleration in X direction (std)

"tBodyAcc.std...Y"            
body acceleration in Y direction (std)

"tBodyAcc.std...Z"            
body acceleration in Z direction (std)

"tGravityAcc.std...X"
gravity acceleration in X direction (std)

"tGravityAcc.std...Y"        
gravity acceleration in y direction (std)

"tGravityAcc.std...Z"         
gravity acceleration in z direction (std)

"tBodyAccJerk.std...X"
body acceleration JERK in X direction (std)
"tBodyAccJerk.std...Y"
body acceleration JERK in Y direction (std)

"tBodyAccJerk.std...Z"       
body acceleration JERK in Z direction (std)

"tBodyGyro.std...X"
angular acceleration in X direction (std)

"tBodyGyro.std...Y" 
angular acceleration in Y direction (std)

"tBodyGyro.std...Z"
angular acceleration in Z direction (std)

"tBodyGyroJerk.std...X"
angular acceleration in X direction JERK (std)

"tBodyGyroJerk.std...Y"
angular acceleration in Y direction JERK (std)

"tBodyGyroJerk.std...Z"
angular acceleration in Z direction JERK (std)

"tBodyAccMag.std.."
magnitude of body acceleration (std)

"tGravityAccMag.std.."       
magnitude of gravity acceleration (std)

"tBodyAccJerkMag.std.."       
magnitude of body acceleration JERK (std)

"tBodyGyroMag.std.."
magnitude of angular accerlation (std)

"tBodyGyroJerkMag.std.."      
magnitude of angular acceleration JERK (std)

"fBodyAcc.std...X"
FFT of body acceleration in X direction (std)

"fBodyAcc.std...Y"            
FFT of body acceleration in Y direction (std)

"fBodyAcc.std...Z"            
FFT of body acceleration in Z direction (std)

"fBodyAccJerk.std...X"
FFT of body acceleration JERK in X direction (std)

"fBodyAccJerk.std...Y"
FFT of body acceleration JERK in Y direction (std)

"fBodyAccJerk.std...Z"        
FFT of body acceleration JERK in Z direction (std)

"fBodyGyro.std...X"           
FFT of angular acceleration in X direction (std)

"fBodyGyro.std...Y"
FFT of angular acceleration in Y direction (std)

"fBodyGyro.std...Z"
FFT of angular acceleration in Z direction (std)

"fBodyAccMag.std.."
magnitude of body acceleration (std)

"fBodyBodyAccJerkMag.std.."   
magnitude of body acceleration JERK (std)

"fBodyBodyGyroMag.std.."
magnitude of angular acceleration (std)

"fBodyBodyGyroJerkMag.std.." 
magnitude of angular acceleration (std)