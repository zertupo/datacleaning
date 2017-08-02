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

dataset

## the columns from feature with mean

selection_colonne

## the columns from feature with std

selection_colonne2

## selection_mean

the selection from data set with only the means

## selection_std

the selection from data set with only the std

## extraction

merge selection_mean and selection_std

## activity_train

merge y_train and label

## activity_test

merge y_test and label

## activity

merge activity_test and activity_train

## dataset2

add activity to extraction

## sujet

merge sub_train and sub_test

## dataset2
add sujet to dataset2

