#You should create one R script called run_analysis.R that does the following. 
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Please upload the tidy data set created in step 5 of the instructions. Please upload your data set as a txt file created with write.table() using row.name=FALSE
#Please submit a link to a Github repo with the code for performing your analysis. The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. The output should be the tidy data set you submitted for part 1. You should include a README.md in the repo describing how the script works and the code book describing the variables.
#


#fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileurl,destfile="wearable.txt",method="curl")

#setwd("/Users/sepiddsh/Dropbox/14-R-directory/CleaningData/Course Project/UCI HAR Dataset")
# Step 1: Merge train and test datasets 
setwd("./UCI HAR Dataset")
activity_labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")

subject_test <- read.table("./test/subject_test.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

subject_merged <- rbind(subject_train,subject_test) 
X_merged <- rbind(X_train,X_test)
y_merged <- rbind(y_train,y_test)

# Step 2: Extract only mean and std measurements
MeanStd_Indexes <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,
                     266:271,345:350,424:429,503:504,516:517,529:530,542:543)
X_merged <- X_merged[,MeanStd_Indexes]

#Step 3:
y_merged_factor <- factor(y_merged$V1)
levels(y_merged_factor) <- activity_labels$V2

#Step 4:
colnames(X_merged) <- features$V2[MeanStd_Indexes]
Data_merged <- cbind(X_merged,subject_merged,y_merged_factor)
colnames(Data_merged)[61:68] <- c("fBodyAccJerkMag-mean()","fBodyAccJerkMag-std()",
                                  "fBodyGyroMag-mean()","fBodyGyroMag-std()",
                                  "fBodyGyroJerkMag-mean()","fBodyGyroJerkMag-std()",
                                  "subject", "activity")

# Step 5: Untidy data to Tidy independent dataset:
library(reshape2)
Data_melt <- melt(Data_merged,id=c("subject","activity"),measure.vars= colnames(Data_merged)[1:66])
Tidy <- dcast(Data_melt,subject + activity ~ variable,mean)
write.table(x, file = "Tidy.txt", row.names = FALSE)
