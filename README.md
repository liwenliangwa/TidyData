# TidyData


Course project for **_Getting and Cleaning Data_** - 

## Requirements:

The submission of the project should includes:

1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis,
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

The data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for this project were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The script run_analysis.R is broken down into 7 different sections:

0) Reading all relevant data from files
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6) Output the data into files

## Results:

1) Step 1 All Data.csv - this is the result from Step 1 with data from both training dataset and test dataset, along with Subject ID & ActivityID 
2) Step 4 Labeled Data.csv - this is the result from Step 2 - 4 with only the measurements on the mean and standard deviation for each measurement along with description activity name (the very last column) and appropriate column name to describe the variables
3) Step 5 Mean By SA Tall.csv - this is the result from Step 5, which is a second data set summarized from step 4 result with mean value, and this dataset is a tall data tidy data.
4) Step 5 Mean By SA Wide.csv - this is alternative result similar to the Tall one but this one has all the measurements listed as column names.





