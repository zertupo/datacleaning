# datacleaning
assignment for coursera

## data training
x_train <- read.table("X_train.txt") 
## data label for training
y_train <- read.table("y_train.txt")  
## data test
x_test <- read.table("X_test.txt")  
## data label for test
y_test <- read.table("y_test.txt")  
## data subject test
sub_test<- read.table("subject_test.txt")  
## data subject training
sub_train<- read.table("subject_train.txt")  
## data column
features<- read.table("features.txt")  
 ## data label
label<- read.table("activity_labels.txt") 


## to see the variables caracteristics

str(label)
str(y_train)
str(y_test)
str(x_train)
str(x_test)
str(sub_test)
str(sub_train)
str(features)

unique(x_test[,1])
unique(sub_test)
unique(sub_train)

dim(label)
dim(y_train)
dim(y_test)
dim(x_train)
dim(x_test)
dim(sub_test)
dim(sub_train)
dim(features)

## give the names of columns
colnames(x_train)<-features[,2]
colnames(x_test)<-features[,2]

features[1:4,2]

head(names(x_test))
head(names(x_train))


library(dplyr)

## construction of tidy dataset
##first with the subject_test
## follow with the column selection mean and std
##final with the activity
## conclusion calculus of the mean for each subject and each activity

test<-cbind(sub_test,x_test)
head(test)

train<-cbind(sub_train,x_train)

dataset<-rbind(test,train)
dim(dataset)


selecion_colonne<-grep('mean',features[,2])
selecion_colonne2<-grep('std',features[,2])
selection_mean<-dataset[,selecion_colonne+1]
selection_std<-dataset[,selecion_colonne2+1]

extraction<-cbind(selection_mean,selection_std)
dim(extraction)

activity_train<-merge(y_train,label,by.x="V1",by.y="V1",all=TRUE)
activity_test<-merge(y_test,label,by.x="V1",by.y="V1",all=TRUE)
colnames(activity_test)<-c("var","activity")
colnames(activity_train)<-c("var","activity")

activity<-rbind(activity_train,activity_test)

dataset2<-cbind(extraction,activity[2])

sujet<-rbind(sub_train,sub_test)
colnames(sujet)<-c("sujet")
dataset2<-cbind(sujet,dataset2)

dim(dataset2)
head(dataset2)

s<-split(dataset2,list(dataset2$sujet,dataset2$activity),drop=TRUE)
str(s)

lapply(s, function(x) colMeans(x[,colnames(extraction)]))
