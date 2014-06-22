#CodeBook
###This is a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.

##The data source
	•	Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	•	Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##The data
###The dataset includes the following files:
	•	'README.txt'
	•	'features_info.txt': Shows information about the variables used on the feature vector.
	•	'features.txt': List of all features.
	•	'activity_labels.txt': Links the class labels with their activity name.
	•	'train/X_train.txt': Training set.
	•	'train/y_train.txt': Training labels.
	•	'test/X_test.txt': Test set.
	•	'test/y_test.txt': Test labels.
###The following files are available for the train and test data:
	•	'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Range is from 1 to 30.
	•	'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
	•	'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
	•	'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## ID Fields
* `subject` - The participant ("subject") ID
* `activity` - The label of the activity performed when the corresponding measurements were taken

## Extracted Feature Fields
* `tBodyAcc-mean()-X` (column `1`)
* `tBodyAcc-mean()-Y` (column `2`)
* `tBodyAcc-mean()-Z` (column `3`)
* `tBodyAcc-std()-X` (column `4`)
* `tBodyAcc-std()-Y` (column `5`)
* `tBodyAcc-std()-Z` (column `6`)
* `tGravityAcc-mean()-X` (column `41`)
* `tGravityAcc-mean()-Y` (column `42`)
* `tGravityAcc-mean()-Z` (column `43`)
* `tGravityAcc-std()-X` (column `44`)
* `tGravityAcc-std()-Y` (column `45`)
* `tGravityAcc-std()-Z` (column `46`)
* `tBodyAccJerk-mean()-X` (column `81`)
* `tBodyAccJerk-mean()-Y` (column `82`)
* `tBodyAccJerk-mean()-Z` (column `83`)
* `tBodyAccJerk-std()-X` (column `84`)
* `tBodyAccJerk-std()-Y` (column `85`)
* `tBodyAccJerk-std()-Z` (column `86`)
* `tBodyGyro-mean()-X` (column `121`)
* `tBodyGyro-mean()-Y` (column `122`)
* `tBodyGyro-mean()-Z` (column `123`)
* `tBodyGyro-std()-X` (column `124`)
* `tBodyGyro-std()-Y` (column `125`)
* `tBodyGyro-std()-Z` (column `126`)
* `tBodyGyroJerk-mean()-X` (column `161`)
* `tBodyGyroJerk-mean()-Y` (column `162`)
* `tBodyGyroJerk-mean()-Z` (column `163`)
* `tBodyGyroJerk-std()-X` (column `164`)
* `tBodyGyroJerk-std()-Y` (column `165`)
* `tBodyGyroJerk-std()-Z` (column `166`)
* `tBodyAccMag-mean()` (column `201`)
* `tBodyAccMag-std()` (column `202`)
* `tGravityAccMag-mean()` (column `214`)
* `tGravityAccMag-std()` (column `215`)
* `tBodyAccJerkMag-mean()` (column `227`)
* `tBodyAccJerkMag-std()` (column `228`)
* `tBodyGyroMag-mean()` (column `240`)
* `tBodyGyroMag-std()` (column `241`)
* `tBodyGyroJerkMag-mean()` (column `253`)
* `tBodyGyroJerkMag-std()` (column `254`)
* `fBodyAcc-mean()-X` (column `266`)
* `fBodyAcc-mean()-Y` (column `267`)
* `fBodyAcc-mean()-Z` (column `268`)
* `fBodyAcc-std()-X` (column `269`)
* `fBodyAcc-std()-Y` (column `270`)
* `fBodyAcc-std()-Z` (column `271`)
* `fBodyAccJerk-mean()-X` (column `345`)
* `fBodyAccJerk-mean()-Y` (column `346`)
* `fBodyAccJerk-mean()-Z` (column `347`)
* `fBodyAccJerk-std()-X` (column `348`)
* `fBodyAccJerk-std()-Y` (column `349`)
* `fBodyAccJerk-std()-Z` (column `350`)
* `fBodyGyro-mean()-X` (column `424`)
* `fBodyGyro-mean()-Y` (column `425`)
* `fBodyGyro-mean()-Z` (column `426`)
* `fBodyGyro-std()-X` (column `427`)
* `fBodyGyro-std()-Y` (column `428`)
* `fBodyGyro-std()-Z` (column `429`)
* `fBodyAccMag-mean()` (column `503`)
* `fBodyAccMag-std()` (column `504`)
* `fBodyBodyAccJerkMag-mean()` (column `516`)
* `fBodyBodyAccJerkMag-std()` (column `517`)
* `fBodyBodyGyroMag-mean()` (column `529`)
* `fBodyBodyGyroMag-std()` (column `530`)
* `fBodyBodyGyroJerkMag-mean()` (column `542`)
* `fBodyBodyGyroJerkMag-std()` (column `543`)

## Activity Labels
* `WALKING` (value `1`)
* `WALKING_UPSTAIRS` (value `2`)
* `WALKING_DOWNSTAIRS` (value `3`)
* `SITTING` (value `4`)
* `STANDING` (value `5`)
* `LAYING` (value `6`)

##Transformation details
	1.	Merges the training and the test sets to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive activity names.
	5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##How run_analysis.R implements the above steps:
	•	Load the data.table and reshape2 libraries.
	•	Load both test and train data
	•	Load the features and activity labels.
	•	Extract the mean and standard deviation column names and data.
	•	Process the data -- there are two parts that process the test and train data separately.
	•	Merge data set.
	•	Produce and write new tidy data set.
