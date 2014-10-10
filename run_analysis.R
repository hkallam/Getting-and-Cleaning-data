rm(list=ls())
setwd("/Users/himabindu/Desktop/coursera/assignment")
##1.Merging the Train and Test Data Sets

## reading the features data 
features <- read.table("data/features.txt")
##reading the activity labels
activity <- read.table("data/activity_labels.txt")

#Reading all test data and appending using cbind
x_test<-read.table("data/test/X_test.txt")
names(x_test)<-features[,2]
y_test<-read.table("data/test/y_test.txt")
ytest<-merge(y_test,activity)
names(ytest)<-c("activityId","activityLabel")
subject_test <-read.table("data/test/subject_test.txt")
names(subject_test)<-"subject"
test <- cbind(x_test, ytest, subject_test)

#Reading all train data and appending using  cbind
x_train<-read.table("data/train/X_train.txt")
names(x_train)<-features[,2]
y_train<-read.table("data/train/y_train.txt")
ytrain<-merge(y_train,activity)
names(ytrain) <- c("activityId","activityLabel")
subject_train <-read.table("data/train/subject_train.txt")
names(subject_train)<-"subject"
train <- cbind(x_train, ytrain, subject_train)
final_data_set <- rbind(train,test)
colnames<-names(final_data_set)

##2 .exactring only the mean and std columns using grep function
meancols <- colnames[grep("mean()",colnames, fixed=TRUE)]
stdcols <- colnames[grep("std()",colnames, fixed=TRUE)]
required_cols <- c("activityId","activityLabel","subject", meancols, stdcols )
final_data_set <- final_data_set[ ,required_cols]

## used dplyr and tidyr packages to tidy the merged dataset
library(dplyr)
library(tidyr)
df1<-gather(final_data_set,agg,measurement,-activityId,-activityLabel,-subject)

## str_split is used to split the string. here we are splitting features like tbodyAcc-mean()-X

library(stringr)
split_variable <-str_split_fixed(as.character(df1$agg),fixed("-"),3)
df1$agg1 <- split_variable[,1]
df1$reading_statistics <- split_variable[,2]
df1$reading_coordinates <- split_variable[,3]
df1$reading_domain <- substr(df1$agg1,1,1) ## substr  splits from starting letter to ending letter.here we started from 1 and end at 1
df1$reading_type <- substr(df1$agg1,2,length(df1$agg1)) ## here we splitted the BodyAcc statrting from 2 ending with that length
df1$reading_coordinates[df1$reading_coordinates==""]<-"NA" ## replaced the blank spaces with NA
##table(df1$reading_type)
df1$reading_statistics<-gsub('[()]','',df1$reading_statistics)
tidy_data<-df1[,c("activityLabel","subject", "reading_type","reading_statistics",  "reading_coordinates", "reading_domain" , "measurement")]
attach(tidy_data)  
## calucating the mean for each subject and for each activity using aggregate
final <- aggregate(tidy_data[,"measurement"], 
                        by=list(activityLabel,subject,reading_type, reading_statistics, reading_coordinates, reading_domain),
                        FUN=mean, na.rm = TRUE)
colnames(final)<-c("activity","subject","type","statistics","co-ordinates","domain","measurement")

write.table(final,row.names=FALSE)