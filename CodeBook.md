# Code Book for the tidy data set created in this project

The output of this project is a tidy data set with 68 columns (variables) and 180 rows.

##Columns
We can devide the variables (columns) into three main groups:
* Variable 1: activity name
* Variable 2: subject number which is related to a specific person
* All other variables: The averages for measurements on the mean and the standard deviation for a specific activity and a specific subject. example:
Variable 3: tBodyAcc-mean()-X: The average of the mean() values of "time body acceleration in X axis" for specific activity and specific object. Similary, we can define other variables in the data set. These variables are related to the averages of the following features in each of the three X-Y-Z axis:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

##Rows
We have 180 rows in this data set. Each row contains the average data on some features for specific subject while he/she is doing a specific activity (walking, walking upstairs, ...). There are 30 subjects and 6 different activities. So, we have 180 rows of records in total.
