## Script run_analysis.R

# Step 1: merge the training and the test sets to create one data set
train_X <- read.table("./train/X_train.txt")
train_y <- read.table("./train/y_train.txt")
train_subject <- read.table("./train/subject_train.txt")

test_X <- read.table("./test/X_test.txt")
test_y <- read.table("./test/y_test.txt")
test_subject <- read.table("./test/subject_test.txt")

data1_X <- rbind2(train_X, test_X)
data1_y <- rbind2(train_y, test_y)
data1_subject <- rbind2(train_subject, test_subject)

data1 <- cbind(data1_X, datat1_y, data1_subject)

## Step 2: extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("./features.txt")
features_headers <- features[, "V2"]
# Add headers to X measurements
colnames(data1_X) <- features_headers
# Add activity and subject headers
colnames(data1_y) <- c("activity_id")
colnames(data1_subject) <- c("subject")

data2_full <- cbind(data1_X, data1_y, data1_subject)

# Load the require library ' dplyr'
library(dplyr)

# Load the data into a ‘data frame tbl’ 
data2_df <- tbl_df(data2_full)
# Make the selection
data2 <- select(data2_df, contains("mean") , contains("Mean"), contains("std()"), activity_id, subject)

## Step 3: use descriptive activity names to name the activities in the data set
activity_labels <- read.table("./activity_labels.txt")
colnames(activity_labels) <- c("id", "activity")
# data3 = merge(data2, activities, by.x="activity_id", by.y="id")

