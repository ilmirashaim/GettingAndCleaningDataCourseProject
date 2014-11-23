---
title: "Processing Data From Accelerometer And Gyroscope In Smartphone"
author: "Ilmira Shaim"
date: "23 ноября 2014 г."
output: html_document
---
Assuming that data acceptable from the <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">link</a> is unpacked in current working directory in "UCI HAR Dataset", we can load it in R and process. 

All the code is in "run_analysis.R" file. Main steps of the analysis are the following.

1. Merging the training and the test sets to create one data set.  
There are two sub-directies "train" and "test" in the data directory.  
We load test and training sets from "X_train.txt" and "X_test.txt".  
Then read activity classes for those data sets from "y_train.txt" and "y_test.txt".  
Then we read subject ids from "subject_train.txt" and "subject_test.txt".  
We merge activity classes and subject to the data set.

2. Extracting the measurements on the mean and standard deviation for each measurement.  
From "features_info.txt" we find out that features names that contain 'mean()' and 'std()' singnify mean value and standard deviation correspondingly.  
To extract those measurements we need "features.txt" file to find features names with substrings 'mean()' or 'std()'. We do this using a regexp and find 66 variables.   
So now we can filter th dataset to include those 66 variables and activity classes and subjects.
  
3. Adding descriptive activity names to name the activities in the data set.    
So we have class of an activity for each row. We should convert these labels to the factors with values corresponding to activity name. The activity labels are stored in an "activity_labels.txt". We take the labels as factor's levels for a new factor column named "activity".

4. Labeling the data set with descriptive variable names.  
We have descriptive features names in "features.txt". So we can assign it to our dataset.

5. Creating an independent tidy data set with the average of each variable for each activity and each subject.  
For each variable in the dataset we can find the average value  for each activity and each subject and create a new data set from these values.  
The result dimension is correct, because there are 180 rows in the result and we have 30 subjects and 6 activities.


The meaning of variables in result data set is described in "CodeBook.md" file.
 
The result data set is written to the current directory in file "result.txt"
It can be loaded and viewed by following code:
<pre><code>data <- read.table("result.txt", header = TRUE)
View(data)
</code></pre>

