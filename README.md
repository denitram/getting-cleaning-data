# Getting and Cleaning Data: Course Project

This is the repository of the Coursera [Getting and Cleaning Data](https://www.coursera.org/course/getdata) project.


The script **run_analysis.R** does the following:

1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set  
4. Appropriately labels the data set with descriptive variable names.   
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

The script runs in the folder 'UCI HAR Dataset' and expects the following files and folders:
./activity_labels.txt	
./features_info.txt  
./features.txt  
./test/X_test.txt		  
./test/subject_test.txt	  
./test/y_test.txt  
./train/X_train.txt		  
./train/subject_train.txt	
./train/y_train.txt  

## Step 1 - Merge the training and the test sets to create one data set.
Merge the `train` and the `test` raw data together using rbind() and cbind() functions
Step 1 delivers the data frame **data1** which contains 10299 observations and 563 variables

## Step 2 -
Requirements:
'dplyr' package 
* 
