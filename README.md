# CleaningData_Project
Getting and Cleaning Data Course Project, Wearable Computing

The run_analysis.R works when the unzipped data is in a folder called "UCI HAR Dataset" in the working directory.

# Step 1:
It first sets the working direcctory to "UCI HAR Dataset" and reads subject,X, and y datasets from the test and train subfolders, as well as activity labels and features.
Merges the training and the test sets to create three data sets called: "subject_merged", "X_merged", and "y_merged".

# Step 2:
The 66 measurements containing mean() and std() at the end of their names were extracted: a total of 66
Note: There were 13 more measurements which had the word "mean" somewhere in their names, those were not taken into account as I interpreted the [project description. 
"X_merged" contains only the measurements on the mean and standard deviation for each measurement. 

# Step 3:
The activity labels in y_merged are converted to factor, and their levels are changed to the second column of activity labels, which contains the descriptive namesof activities.

# Step 4:
Appropriately labels the data set with descriptive variable names. This is done by replacing column names with the second column of the features dataframe, which is a factor vector.

Finally all subjects, labeles, and X_merged data are merged into one dataset. And the column names are adjusted a bit (where there were BodyBody in the names, it is replaced with one Body) and subject and activity column names are adjusted too.

#Step 5:
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
This is done by melting  using "subject" and "activity" as id. Then, the melted dataset is dcast'ed using subject+activity for all variables.

The result is a wide tidy dataset.

Finally this tidy dataset is written into Tidy.txt file in the working directory using the write.table command with row.names = FALSE.
