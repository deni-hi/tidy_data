## Project Description
This project combines data from different files and tidies it into a clean dataset.


## Study design and data processing

### Collection of the raw data
The data was downloaded from <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a> as a zipfile.


## Creating the tidy datafile

### Guide to create the tidy data file Download the data from
Extract the data from the zipfile to the same folder where ‘run_analysis.R’ is located.
Run run_analysis.R to obtain the tidy datased, it will be called ‘avgSummary’.

### Cleaning of the data

The file run_analysis.R does the following, as defined in the
assignment: 
* Merges the training and the test sets to create one data
set. 
* Extracts only the measurements on the mean and standard
deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set 
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable
for each activity and each subject.

## Description of the variables in the avgSummary.txt file 
- Dimensions
of the dataset: 180 x 48
- Summary of the data: mean and standard deviation values by subject and activity.
- Variables present in
the dataset: activity, subject, 

activity - activity performed by the subjects as a string. 
Unique values of the variable: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject - Contains the index of the volunteer as a numeric value from 1 to 30.

The next variables are available in two sets:
- mean - mean value 
- std -  standard deviation


The following are signals, where '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions

- tBodyAcc -XYZ - time for body acceleration signals 
- tGravityAcc -XYZ - time for gravity acceleration signal
- tBodyAccJerk - time for body linear acceleration signal
- tBodyGyro -XYZ - time for body angular velocity signal 
- tBodyGyroJerk -XYZ - time for body angular velocity Jerk signal
- tBodyAccMag - time for body acceleration magnitude
- tGravityAccMag - time for gravity acceleration magnitude
- tBodyAccJerkMag - time for body acceleration Jerk signal magnitude
- tBodyGyroMag - time for body gyroscope magnitute
- tBodyGyroJerkMag-mean - time for body gyroscopic jerk magnitude
- fBodyAcc -XYZ - frequency for body acceleration
- fBodyAccJerk -XYZ - frequency for body acceleration Jerk signal 
- fBodyGyro -XYZ -  frequency for body gyroscopic acceleration 
- fBodyAccMag - frequency for body acceleration magnitude
- fBodyBodyAccJerkMag - frequency for body acceleraction Jerk signal magnitude
- fBodyBodyGyroMag - frequency for body gyroscopic magnitude
- fBodyBodyGyroJerkMag - frequency for body gyroscopic Jerk signal magnitude

