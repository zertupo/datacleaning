## data training
x_train 
the data are in standard gravity unit for 'total_acc_x', the body acceleration is the substraction of the gravity from de the total and the body_gyro are in radians/second
## data label for training
y_train  
## data test
x_test
the data are in standard gravity unit for 'total_acc_x', the body acceleration is the substraction of the gravity from de the total and the body_gyro are in radians/second
## data label for test
y_test
## data subject test
sub_test
 ## data subject training
sub_train
## data column
features 
 ## data label
label

## the data merged x_train and x_test

datas

## the data merged y_train and y_test

y_data

## the data merged sub_train and sub_test

sub_data

## the integer of column containing 'Mean' or 'SD'

colonne

## the names of columns

nom_colonne

## the dataset of 'data' with only the column of means and SD

select_data

## the data merged y_data and label

activity

## the tidy date, the merge of sub_data,actitivy and select_data

complete_data

## tidy data of mean of each variable for each subject and each activity

final

## name of variable in the final tidy data

[1] "subject"                              "activity"                             "id_activity"                          "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
 [6] "tBodyAcc-mean()-Z"                    "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                 "tBodyAccJerk-mean()-X"               
[11] "tBodyAccJerk-mean()-Y"                "tBodyAccJerk-mean()-Z"                "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                  
[16] "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"               "tBodyGyroJerk-mean()-Z"               "tBodyAccMag-mean()"                   "tGravityAccMag-mean()"               
[21] "tBodyAccJerkMag-mean()"               "tBodyGyroMag-mean()"                  "tBodyGyroJerkMag-mean()"              "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
[26] "fBodyAcc-mean()-Z"                    "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"                "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"               
[31] "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"           
[36] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                   "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[41] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                   "fBodyAccMag-meanFreq()"               "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-meanFreq()"      
[46] "fBodyBodyGyroMag-mean()"              "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"         
[51] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"     "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                
[56] "angle(Z,gravityMean)"                


