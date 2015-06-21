#step 0: read all necessary files
subject_Train=read.table("./UCI HAR Dataset/train/subject_train.txt")
activity_Train=read.table("./UCI HAR Dataset/train/y_train.txt")
features_Train=read.table("./UCI HAR Dataset/train/X_train.txt")
subject_Test=read.table("./UCI HAR Dataset/test/subject_test.txt")
activity_Test=read.table("./UCI HAR Dataset/test/y_test.txt")
features_Test=read.table("./UCI HAR Dataset/test/X_test.txt")
feature_Names_All=read.table("./UCI HAR Dataset/features.txt")
activity_labels=read.table("./UCI HAR Dataset/activity_labels.txt")

#Merge the train and the test data sets (step 1)
features_All=rbind(features_Train,features_Test)
subjects_All=rbind(subject_Train,subject_Test)
activity_All=rbind(activity_Train,activity_Test)

#Extract the indices of mean and standard deviation indices (step2)
mean_Indices=grep("mean()",feature_Names_All[,2],fixed = T)
std_Indices=grep("std()",feature_Names_All[,2],fixed = T)
variable_Indices=sort(c(mean_Indices,std_Indices))

#Using the indices, select the names of mean and std measurements (step 2)
variable_Names=as.character(feature_Names_All[,2][variable_Indices])

#select only the data for features about mean and std (step 2)
features=features_All[,variable_Indices]

#Column_Bind data for features, subjects, and activity (step 1)
full_Data=cbind(features,subjects_All,activity_All)
#Column_Bind variable names for features, subjects, and activity (step 4)
variable_Names=c(variable_Names,"subject", "activity_Code")
#Assign variable names to data (step4)
names(full_Data)=variable_Names

#Use activity names instead of activity code in the data set (step 3)
names(activity_labels)=c("activity_Code","activity")
full_Data=merge(full_Data,activity_labels,by.x="activity_Code",by.y="activity_Code")
full_Data=full_Data[,-1]

#Step 5: Create independent tidy data and print the result
aggregate_Result = aggregate(data=full_Data, . ~ activity+subject,FUN=mean)
print(aggregate_Result)