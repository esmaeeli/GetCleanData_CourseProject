# Course Project of Getting and Cleaning Data

This document describes the scrips and the overall process of creating the required output in run_analysis.R

## Reading the files - lines 2-9
Through these scripts we read all of the necessary files that are required for this project. The main folder of data (“UCI HAR Dataset”) must be in the working directory. We create eight  following data frames by running these scripts:
* subject_Train: data frame of subjects for train data
* activity_Train: data frame of activities for train data
* features_Train: data frame of 561 features for train data 
* subject_Test: data frame of subjects for Test data
* activity_Test: data frame of activities for Test data
* features_Test: data frame of 561 features for Test data
* features_Names_All: names of 561 features
* activity_lables: six activity codes and their related describing names

## Merging train and test data sets- lines 12-14
In these three lines of scripts, we merge the data  for train and test data sets. At the end of this phase we have three data frames for features, subjects, and activities. However, we do not merge these three data frames at this step (because we need to remove the unnecessary data from features first)

##Extracting the indices for measurements of the mean and standard deviation- lines 17-19
First we extract the indices for the measurements of the mean by using the function “grep” and the pattern “mean()”. Then we do the same for measurements of the standard deviation. Finally, we merge these indices together. At the end of this phase, we have the indices of all of the required features among 561 features. We put these indices in the vector of integers called “variable_Indices”. We will use these indices to remove unnecessary names from features names and unnecessary data from features data.

##Extracting necessary features names- line 22
Using the indices we extracted in the previous section, we find the names of all of the required features and put them in “variable_Names”

##Removing unnecessary features data- line 25
Again, using the indices, we remove all of the measurement data that are not related to mean or standard deviation at this phase.

##Merging features, subjects, and activity data to one data frame- line 28
Now that we removed unnecessary features data, we can merge all of our data to one data frame. We call this data frame “full_Data”

##Merging variable names for features, subjects, and activity- line 30
We merge the variable names for all of the required features data, subjects, and activities

##Adding descriptive names to data- line 32
Using the result of the previous two steps, we add the descriptive names to our “full_Data” data frame

##Using descriptive activity names instead of activity codes in the data set- lines 35-37
Using the “merge” function, we add descriptive names for activities into our data set. Then we remove the unnecessary activity code column from our data set.

##Create independent tidy data set- lines 40-41
The only thing remains is to create our tidy data set. We use the “aggregate” function to find the average of each variable for each activity and each subject.
This aggregated result is in data frame “aggregate_Result”.
Finally we print the contents of our tidy data set.
