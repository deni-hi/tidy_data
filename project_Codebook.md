## Project Description
This project combines data from different files and tidies it into a clean dataset.

## Study design and data processing

### Collection of the raw data Description of how the data was
collected.

### Notes on the original (raw) data Some additional notes (if
avaialble, otherwise you can leave this section out).

## Creating the tidy datafile

### Guide to create the tidy data file Download the data from
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones" class="uri">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>
and extract it to the same folder where ‘run_analysis.R’ is located.
Run run_analysis.R to obtain the tidy datased, it will be called
‘avgSummary’.

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
of the dataset: 180 x 8 
- Summary of the data: 
- Variables present in
the dataset: activity, subject, avg_meanX, avg_meanY, avg_meanZ,
avg_stdX, avg_stdY, avg_stdZ

### activity 

Contains the activity performed by the subjects.

Class: character 
Unique values of the variable: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### subject 

Contains the index of the volunteer.

Class: numeric Unique values of the variable: 1 to 30.

### avg_meanX, avg_meanY, avg_meanZ 

Contains the average of the mean value for each axis (X, Y and Z).

Class: numeric

### avg_stdX, avg_stdY, avg_stdZ 

Contains the average of the standard deviation for each axis (X, Y and Z).

Class: numeric
