# TidyData


Course project for **_Getting and Cleaning Data_** - 

## Requirements:

The submission of the project should includes:

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis,
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

The data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for this project were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## How the script works?

The script run_analysis.R is broken down into 7 different sections:

0. Reading all relevant data from files:
  * features.txt - this file contains all individual measurement names
  * activity_labels.txt - this file contains activity id and the corresponding activity name
  * train\subject_train.txt - this file contains subject id for each record in the training dataset
  * train\X_train.txt - this file contains the training dataset values of each measurement
  * train\y_train.txt - this file contains the activity id for each record
  * test\subject_test.txt - this file contains subject id for each record in the test dataset
  * test\X_test.txt - this file ctonains the test dataset values of each measurement
  * test\y_test.txt - this file contains the activity id for each recor
1. Merges the training and the test sets to create one data set, using rbind & cbind
2. Extracts only the measurements on the mean and standard deviation for each measurement by subsetting the feature list.
3. Uses descriptive activity names to name the activities in the data set, this is done by using the merge() function to associate activity ID with its corresponding activity name.
4. Appropriately labels the data set with descriptive variable names, this is done by setting the column names of the data set using the subsetted feature list, and remove unnecessary "()"
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject, This is accomplished by using melt() and dcast() funciton to reshape the raw datasets.
6. Output the data into files

## Results:

1. **_Mean By SA Tall.txt_** - this is the result from Step 5, which is a second data set summarized from step 4 result with mean value, and this dataset is a tall data tidy data.
2. **_Mean By SA Wide.txt_** - this is alternative result similar to the Tall one but this one has all the measurements listed as column names, hence, the wide tidy data.

## Code Book
1. **_[CodeBook_Tall.md](https://github.com/liwenliangwa/TidyData/blob/master/CodeBook_Tall.md)_** - Code Book for Mean By SA Tall dataset
2. **_[CodeBook_Wide.md](https://github.com/liwenliangwa/TidyData/blob/master/CodeBook_Wide.md)_** - Code Book for Mean by SA Wide dataset



