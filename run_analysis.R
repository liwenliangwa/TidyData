## load library data.table
library(data.table)

######################################################################################
##
## let's do all the reading first
##
######################################################################################
## set base path
basePath<-"UCI HAR Dataset/"

## read all features into allFeatures data.table, V1 is feature ID, v2 is feature name, 
## then set the column names
allFeatures<-fread(paste(basePath, "features.txt", sep=""))
setnames(allFeatures, 1:2, c("FeatureID", "Feature"))

## read all activities into activities data.table, V1 is activity ID, v2 is activity 
## name, then set the column names, and set the key
activityLabels<-fread(paste(basePath, "activity_labels.txt", sep=""))
setnames(activityLabels, 1:2, c("ActivityID", "Activity"))
setkey(activityLabels, ActivityID)

## read subject from training & test dataset
subjectTrain<-fread(paste(basePath, "train/subject_train.txt", sep=""))
subjectTest<-fread(paste(basePath, "test/subject_test.txt", sep=""))

## read activity from training & test dataset
activityTrain<-fread(paste(basePath, "train/y_train.txt", sep=""))
activityTest<-fread(paste(basePath, "test/y_test.txt", sep=""))

## read measures from training & test dataset
measureTrain<-read.table(paste(basePath, "train/X_train.txt", sep=""))
measureTest<-read.table(paste(basePath, "test/X_test.txt", sep=""))

######################################################################################
##
## Merges the training and the test sets to create one data set.
##
######################################################################################

## combine training dataset & test dataset, set column name for subject & activityID
allMeasures<-rbind(measureTrain, measureTest)
allSubjects<-rbind(subjectTrain, subjectTest)
setnames(allSubjects, "SubjectID")
allActivities<-rbind(activityTrain, activityTest)
setnames(allActivities, 1, "ActivityID")
allData<-cbind(allSubjects, allActivities, allMeasures)
## set key for the dataset
setkey(allData, ActivityID)


######################################################################################
##
## Extracts only the measurements on the mean and standard deviation for 
## each measurement. 
##
######################################################################################

## search "mean" measures, and "std" measures, find their index
fMean<-grep("mean", allFeatures$Feature)
fStd<-grep("std", allFeatures$Feature)

## combine them together into fSelected
fSelected<-c(fMean, fStd)

## subsetting allFeatures into selectedFeatures
selectedFeatures<-allFeatures[fSelected, ]

## subset measure for selected features
selectedMeasures<-allMeasures[,selectedFeatures$FeatureID]

## combine the selected data with subject & activity
selectedData<-cbind(allSubjects, allActivities, selectedMeasures)


######################################################################################
##
## Uses descriptive activity names to name the activities in the data set
##
######################################################################################

## identify key in selected data 
setkey(selectedData, ActivityID)
## merge the data with activity labor, implicitly using ActivityID as key
labeledData<-merge(selectedData, activityLabels)


######################################################################################
##
## Appropriately labels the data set with descriptive variable names. 
##
######################################################################################

## set column names for the selected data data with the feature name, but replace all 
## the "()" with "" (empty string), and stored those names in allMeasures to be used later
allMeasures<-gsub("()", "", selectedFeatures$Feature,fix=TRUE)
setnames(labeledData, 3:81, allMeasures)

######################################################################################
##
## From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
##
######################################################################################

## load reshape2 library
library(reshape2)

## Melt the dataset into tall tidy data, set variable to column 
## 1 - ActivityId, 2 - SubjectID, 82 - Activity, 
## and the rest as values
meltedData<-melt(labeledData, id=c(1, 2, 82), measure.vars=c(3:81))

## calculate the mean by Subject ID & Activity, no need to do ActivityID, since 
## activityID is the ID value of Activity, using dcast
meanBySA1<-dcast(meltedData, SubjectID + Activity ~ variable, mean)

## or we can use ddply to get the mean
## load plyr library first
library(plyr)
meanBySA2<-ddply(meltedData, .(SubjectID, Activity, variable), summarise, mean=mean(value))

## Note that meanBySA1 is wider than meanBySA2, where the former data set has mean for 
## all measures in the same row while the later is much skinny/taller data set with SubjectID
## Activity, variable then mean.

######################################################################################
##
## Write results into files
##
######################################################################################

## result from step 1 - allData
## result from step 4 - labeledData
## result from step 5 - meanBySA1, meanBySA1

write.csv(allData, file="Step 1 All Data.csv", row.names=FALSE)
write.csv(labeledData, file="Step 4 Labeled Data.csv", row.names=FALSE)
write.csv(meanBySA1, file="Step 5 Mean by SA Wide.csv", row.names=FALSE)
write.csv(meanBySA2, file="Step 5 Mean by SA Tall.csv", row.names=FALSE)
