#Getting and Cleaning Data
#Author: Taufeeq Rahmani

#Load the files in the respective datasets
x_test<-read.table("./test/X_test.txt")
dim(x_test)   #2947*561
y_test<-read.table("./test/y_test.txt")
dim(y_test)   #2947*1
x_train<-read.table("./train/X_train.txt")
dim(x_train)  #7352*561
y_train<-read.table("./train/y_train.txt")
dim(y_train)  #7352*1

subject_train<-read.table("./train/subject_train.txt")
dim(subject_train)  #7352*1

subject_test<-read.table("./test/subject_test.txt")
dim(subject_test)   #2947*1

#Merge the respective data in test and train datasets
x_joined<-rbind(x_train,x_test)
y_joined<-rbind(y_train,y_test)
subject_joined<-rbind(subject_train,subject_test)
dim(x_joined)       #10299*561
dim(y_joined)       #10299*1
dim(subject_joined) #10299*1

#Load the features data
features<-read.table("features.txt")
dim(features)

#Extract the rows indices with mean and standard deviation
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
length(meanStdIndices)  #66

#Subset the merged dataset based on row indices with mean and standard deviation
x_joined <- x_joined[, meanStdIndices]
dim(x_joined)   #10299*66

#Remove '()' and '-' from the merged set column names
names(x_joined) <- gsub("\\(\\)", "", features[meanStdIndices, 2])
names(x_joined) <- gsub("-", "", names(x_joined))

#Read the activity data
activity<-read.table("activity_labels.txt")
activityLabel <- activity[y_joined[, 1], 2]

#Convert the activity ID into activity names
y_joined[,1]<-activityLabel
names(y_joined) <- "activity"
names(subject_train)<-"subject"

#merge all the datasets
clean_data<-cbind(subject_joined,y_joined,x_joined)
dim(clean_data)   #10299*68
names(clean_data)[1]<-"Subject"

#Load reshape2 package to perform last requirement
library(reshape2)

#Calculate average of each variable for each activity and each subject
clean_data_melt<-melt(clean_data,id.vars=c("Subject","activity"))
tidy_data<- dcast(clean_data_melt, Subject + activity ~ ..., mean)

#Write the final dataset to txt file
write.table(clean_data,file="clean_data.txt")
write.table(tidy_data,file="tidy_data.txt",row.name=FALSE)
