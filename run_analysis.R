## Run_analysis.R script does the following:
##   (1) Merges the training and the test sets to create one data set.
##   (2) Extracts only the measurements on the mean and standard deviation for each measurement.
##   (3) Uses descriptive activity names to name the activities in the data set.
##   (4) Appropriately labels the data set with descriptive activity names.
##   (5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(data.table)
library(reshape2)

## Load activity labels and features data
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

## Load and process x and y test and x and y training data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(x_test) = features
names(x_train) = features

## Per (2) above, extract only the measurements on the mean and standard deviation for each measurement
extract_features <- grepl("mean|std", features)
x_test = x_test[,extract_features]
x_train = x_train[,extract_features]

## Per (3) above, assign desciptive activity names for test and training data and bind the data
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")
names(subject_test) = "subject"
test_data <- cbind(as.data.table(subject_test), y_test, x_test)

y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"
train_data <- cbind(as.data.table(subject_train), y_train, x_train)

## Per (1) above, merge test and training data
data = rbind(test_data, train_data)

## Per (4) above, assign descriptive variable names
id_labels = c("subject", "Activity_ID", "Activity_Label")
data_labels = setdiff(colnames(data), id_labels)
melt_data = melt(data, id = id_labels, measure.vars = data_labels)

## Per (5) above, apply mean function to merged dataset and create new tidy data file
tidy_data = dcast(melt_data, subject + Activity_Label ~ variable, mean)
write.table(tidy_data, file = "./tidy_data.txt")