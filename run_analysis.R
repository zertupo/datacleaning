
x_train <- read.table("X_train.txt") ## data training
y_train <- read.table("y_train.txt")  ## data label for training
x_test <- read.table("X_test.txt")  ## data test
y_test <- read.table("y_test.txt")  ## data label for test
sub_test<- read.table("subject_test.txt")  ## data subject test
sub_train<- read.table("subject_train.txt")  ## data subject training
features<- read.table("features.txt")  ## data column
label<- read.table("activity_labels.txt")  ## data label


## i load all the packages i will may use
library(dplyr)
library(tidyr)
library(plyr)
library(reshape2)
library(data.table)

### fusion train and test data

data<-rbind(x_train,x_test)
y_data<-rbind(y_train,y_test)
sub_data<-rbind(sub_train,sub_test)


## get the column with the standard deviations and the means
colum_name<-grep('mean',features[,2])
colum_name1<-grep('Mean',features[,2])
column_name_std<-grep('Std',features[,2])

column_name_std
colonne <- sort(c(colum_name,colum_name1,column_name_std))
colonne


## get the name of columns asked
nom_colonne<-features[colonne,2]
nom_colonne

## get the column asked in the data created
select_data<-data[,colonne]
## name the columns
colnames(select_data)<-nom_colonne

## get a table with the subjects and activities
activity<-merge(y_data,label,by.x="V1",by.y="V1",all=TRUE)

## name the columns
colnames(activity)<-c("id_activity","activity")
colnames(sub_data)<-c("subject")


## create the final data frame (tidy data set) containing all the variable and the subjects and the activities
complete_data<-cbind(sub_data,activity,select_data)




## create the independant tidy data set with the average of each varaible for each actitivy and each subject

complete_data
final<-aggregate(. ~ subject + activity,data=complete_data,FUN=mean)

## create the output txt file

write.table(final,"tidy_data.txt",row.names=F)
