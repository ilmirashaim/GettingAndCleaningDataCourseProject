**activity**  
factor  
one of the activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) person performed wearing a smartphone  

**subject**    
integer  
id of one of 30 volunteers (in range from 1 to 30) 

Next 66 variables are numeric.

- ’t’-prefix indicates time domain signals
- ‘f’-prefix indicates frequency domain signals

- ‘-mean()’ postfix denotes average mean for a variable
- ‘-std()’ postfix denotes average standart deviation

Variables are normalized and bounded within [-1,1].

**tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z**  
    body acceleration signals  

**tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z**  
    gravity acceleration signals 

**tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z**  
    body acceleration Jerk signals  

**tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z**  
    body angular velocity signals  
  
**tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z**  
    body angular velocity Jerk signals  

**tBodyAccMag-mean()  
tBodyAccMag-std()  
fBodyAccMag-mean()  
fBodyAccMag-std()**  
    magnitude of three-dimensional body acceleration signals calculated using the Euclidean norm  

**tGravityAccMag-mean()  
tGravityAccMag-std()**  
    magnitude of three-dimensional gravity acceleration signals calculated using the Euclidean norm  

**tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()**  
    magnitude of Jerk acceleration signals  

**tBodyGyroMag-mean()  
tBodyGyroMag-std()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()**  
    magnitude of body angular velocity signals  

**tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()**  
    magnitude of body angular velocity Jerk signals  
