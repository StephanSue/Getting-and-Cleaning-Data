# Getting and Cleaning Data Assignment

## Set Directory (private)
olddir <- getwd()
setwd("D:/Documents/R/Courera/03 Getting and Cleaning Data/Week 4/Assignment")

## 1. Load Packages
library(reshape2)

### Download and unzip the dataset:
filename <- "datasets.zip"
if (!file.exists(filename)){
        fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileurl, filename)
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}

## 2. Load activity labels and features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

### Extract the data relevant for mean and standard deviation
relevantfeatures <- grep(".*mean.*|.*std.*", features[,2])
relevantfeatures.names <- features[relevantfeatures,2]
relevantfeatures.names = gsub('-mean', 'Mean', relevantfeatures.names)
relevantfeatures.names = gsub('-std', 'Std', relevantfeatures.names)
relevantfeatures.names <- gsub('[-()]', '', relevantfeatures.names)

## 3. Load train and test data
train <- read.table("UCI HAR Dataset/train/X_train.txt")[relevantfeatures]
trainactivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainsubjects, trainactivities, train)

test <- read.table("UCI HAR Dataset/test/X_test.txt")[relevantfeatures]
testactivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testactivities, test)

## 4. Join datasets and add labels
alldata <- rbind(train, test)
colnames(alldata) <- c("subject", "activity", relevantfeatures.names)

## 5. Turn activities and subjects into factors
alldata$activity <- factor(alldata$activity, levels = activityLabels[,1], labels = activityLabels[,2])
alldata$subject <- as.factor(alldata$subject)

alldata.melted <- melt(alldata, id = c("subject", "activity"))
alldata.mean <- dcast(alldata.melted, subject + activity ~ variable, mean)

## 6. Write the tidy data
write.table(alldata.mean, "tidy.txt", row.names = FALSE, quote = FALSE)