 

# STEP 1 - Merge the training and the test sets to create one data set.
# Read test data, set column names to be like the ones given in features.txt
featureData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", col.names=c("index", "featName"))

testActivityData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", col.names = "activity")
testSubjectData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
testData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", 
                     col.names = featureData$featName,
                     numerals= c("no.loss"))
testCombinedData<-cbind(testData, testActivityData, testSubjectData)

trainActivityData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", col.names = "activity")
trainSubjectData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
trainData<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", 
                     col.names = featureData$featName,
                     numerals= c("no.loss"))
trainCombinedData<-cbind(trainData, trainActivityData, trainSubjectData)

mergedData<-rbind(testCombinedData, trainCombinedData)


# STEP 2 - Extract only the measurements on the mean and standard deviation for 
# each measurement.
library("dplyr") # needed for 'select'
library("tidyselect") # needed for 'contains'
meanAndStandardDev<-select(mergedData, contains(c(".mean", ".sdt", "activity", "subject")))


# STEP 3 - Use descriptive activity names to name the activities in the data set.
# For now, each activity is a number, we want to assign it the names given in
# activity_labels.txt
activityLabels<-read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", col.names=c("index", "label"))

# The index of each activity corresponds to the line they're in,
# so we can get the label by passing the index.
translateActivity<-function(x){activityLabels$label[x]}
meanAndStandardDev$activity<-sapply(meanAndStandardDev$activity, translateActivity)

# STEP 4 - Appropriately label the data set with descriptive variable names.
# Already done at the beginning.

# STEP 5 - From the data set in step 4, create a second, independent tidy data 
# set with the average of each variable for each activity and each subject.
by_activityAndSubject <- group_by(meanAndStandardDev, activity, subject)

avgSummary<-summarise_all(
    by_activityAndSubject, 
    funs(mean))

write.table(avgSummary, file="avgSummary.txt", row.name=FALSE)
