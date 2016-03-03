
##loading and reading data 

subjectTrain = read.table(file.path(getwd(), "train", "subject_train.txt"),header = FALSE)
subjectTest  = read.table(file.path(getwd(), "test" , "subject_test.txt"),header = FALSE)
featureTest  = read.table(file.path(getwd(), "test" , "X_test.txt" ),header = FALSE)
featureTrain = read.table(file.path(getwd(), "train", "X_train.txt"),header = FALSE)
activityTrain = read.table(file.path(getwd(), "train", "y_train.txt"), header = FALSE)
activityTest = read.table(file.path(getwd(), "test", "y_test.txt"), header = FALSE)

##merging training and test sets

subjectMerged = rbind(subjectTrain, subjectTest)
featureMerged = rbind(featureTrain, featureTest)
activityMerged = rbind(activityTrain, activityTest)

##rename the data sets colums
featureNames = read.table(file.path(getwd(),"features.txt"), header = FALSE)
names(featureMerged) = featureNames$V2
names(activityMerged) = c("activity_id")
names(subjectMerged) = c("subject")

##creating one dataset combining predictors and activity
dataset = cbind(featureMerged, activityMerged)
dataset = cbind(dataset,subjectMerged)

##extracting mean and std from feature names ("featureNames")
meanAndStd = grepl(".*mean.*|.*std.*|.*activity_id.*|.*subject.*",  names(dataset))

##selecting only features concerning mean and std
dataset = dataset[, meanAndStd]

##naming the activities in the dataset
activityNames = read.table(file.path(getwd(), "activity_labels.txt"), header = FALSE)
activityNames = data.frame(activityNames)
names(activityNames) = c("activity_id", "activity")
dataset = data.frame(dataset)
newdata = merge(dataset, activityNames, by = "activity_id", all = TRUE)
newdata = subset(newdata,select=-c(activity_id))

##Appropriately labels the data set with descriptive variable names
names(newdata) = gsub("^t", "Time", names(newdata))
names(newdata) = gsub("^f", "Frequency", names(newdata))
names(newdata) = gsub("Freq", "Frequency", names(newdata))
names(newdata) = gsub("Acc", "Accelerometer", names(newdata))
names(newdata) = gsub("Gyro", "Gyroscope", names(newdata))
names(newdata) = gsub("Mag", "Magnitude", names(newdata))

##creating a second, independent tidy data set with the 
##average of each variable for each activity and each subject.

newTidyData = aggregate( .~ activity + subject, data = newdata, mean)
write.table(newTidyData, file = "tidydata.txt", row.name=FALSE)

##create the code book
library(memisc)
cb = codebook(newTidyData)
Write(cb, file="CodeBook.md")


