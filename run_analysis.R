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

data1 <- cbind(data1_X, data1_y, data1_subject)
write.table(data1, file = "./data1.txt", row.names = FALSE)

## Step 2: extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("./features.txt")
features_headers <- features[, "V2"]
# Add headers to X measurements
colnames(data1_X) <- features_headers
# Add activity and subject headers
colnames(data1_y) <- c("activity_id")
colnames(data1_subject) <- c("subject")

data2_full <- cbind(data1_subject, data1_y, data1_X)

# Load the require library ' dplyr'
library(dplyr)
# Load the data into a ‘data frame tbl’
data2_df <- tbl_df(data2_full)
# Make the selection
data2 <- select(data2_df, contains("mean") , contains("Mean"), contains("std()"), activity_id, subject)
write.table(data2, file = "./data2.txt", row.names = FALSE)

## Step 3: use descriptive activity names to name the activities in the data set
activity_labels <- read.table("./activity_labels.txt")
colnames(activity_labels) <- c("id", "activityLabel")
data3_with_extra_column = merge(data2, activity_labels, by.x="activity_id", by.y="id")
data3 <- select(data3_with_extra_column, -activity_id)
write.table(data3, file = "./data3.txt", row.names = FALSE)

## Step 4: appropriately label the data set with descriptive variable names.
labelNames <- names(data3)
descLabelNames <- gsub("\\(\\)", "", labelNames)
descLabelNames <- gsub("Acc", "Acceleration", descLabelNames)
descLabelNames <- gsub("tB", "timeB", descLabelNames)
descLabelNames <- gsub("tG", "timeG", descLabelNames)
descLabelNames <- gsub("fB", "frequencyDomainSignalsB", descLabelNames)
descLabelNames <- gsub("-mean", "Mean", descLabelNames)
descLabelNames <- gsub("-std", "StandardDeviation", descLabelNames)
descLabelNames <- gsub("-", "", descLabelNames)
descLabelNames <- gsub("Mag", "Magnitude", descLabelNames)
descLabelNames <- gsub("MeanFreq", "MeanFrequency", descLabelNames)
descLabelNames <- gsub("\\)", "",  descLabelNames)
descLabelNames <- gsub("\\(t", "T", descLabelNames)
descLabelNames <- gsub("\\(", "", descLabelNames)
descLabelNames <- gsub(",g", "G", descLabelNames)
names(data3) <- descLabelNames
data4 <- data3
write.table(data4, file = "./data4.txt", row.names = FALSE)

## Step 5: create a tidy data set with the average of each variable for each activity and each subject
library(dplyr)
tidy_df <- tbl_df(data4)

tidy <- tidy_df %>%
        group_by(subject, activityLabel ) %>%
        arrange(subject, activityLabel) %>%
        summarise_each(funs(mean))

labels <- names(tidy)[3:88]
tidyLabels <- gsub("^", "meanOfVar_", labels)
names(tidy)[3:88] <- tidyLabels
names(tidy)[2] <- "activity"
write.table(tidy, file = "./tidy.txt", row.names = FALSE)
