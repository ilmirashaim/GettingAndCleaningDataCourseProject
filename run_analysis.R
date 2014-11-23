# This code reads data from the accelerometers of the Samsung Galaxy S smartphone
# from current directory 
# and creates a dataset with the averages of each variable for each activity and subject

###### 1. Merging the training and the test sets to create one data set

#reading data set
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")

#reading activity classes
Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt")

#reading subjects
SubjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
SubjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

#merging train and test sets
X <- rbind(Xtrain, Xtest)
Y <- rbind(Ytrain, Ytest)
Subject <- rbind(SubjectTrain, SubjectTest)

#assigning descriptive names to dataframes' columns for subjects and activities dataframes
names(Subject) <- c("subject")
names(Y) <- c("activity_class")

#merging dataset with activities and subjects
data <- cbind(X, Y, Subject)
dim(data)

#checking for NA
sum(!complete.cases(data))


###### 2. Extracting the measurements on the mean and standard deviation for each measurement

#reading features names and finding features for mean and standart deviation of variables
features<- read.table("features.txt")
names(features) <- c("id", "name")
isMeanStd <- grepl("(mean\\(\\)|std\\(\\))", features$name, perl=T)
meanStdData <- subset(data, select = c(isMeanStd, TRUE, TRUE))
featuresMeanStd <- features$name[isMeanStd]
dim(data)
length(featuresMeanStd)

###### 3. Adding descriptive activity names to name the activities in the data set

#viewing some activity classes
head(meanStdData$activity_class)

#reading activity labels from file
activity_labels <- read.table("activity_labels.txt")
names(activity_labels) <- c("class", "label")

#converting activity_class to factor
meanStdData$activity <- as.factor(meanStdData$activity_class)
levels(meanStdData$activity) <- activity_labels$label
head(meanStdData$activity)

###### 4. Labeling the data set with descriptive variable names

#assigning descriptive feature names to dataframe
names(meanStdData) <- c(as.character(featuresMeanStd), "activity_class", "subject", "activity")
head(meanStdData)


###### 5. Creating a new data set with the average of each variable
###### for each activity and each subject

#finding a mean of each variable for each activity and subject
result <- aggregate(x=meanStdData[1:length(featuresMeanStd)], by=list(activity=meanStdData$activity,subject=meanStdData$subject), FUN="mean")
dim(result)
head(result)
names(result)

###### 6. Saving results
write.table(result, file="result.txt", row.name=FALSE)