# Code Book (Data Dictionary) for Mean By SA Wide dataset

##Data Source
The raw data is obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
which represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Transformation
The dataset here was transformed using the raw dataset obtained above with the following steps:

  1. Merge measurements from training dataset with measurements from test dataset.
  2. Merge subject ids from training dataset with subject ids from test dataset.
  3. Merge activity ids form training dataset with activity ids form test dataset
  4. Merge subject ids with activity ids and measurments into one big dataset.
  5. Identify interested features, extract only the measurements on the mean and standard deviation for each measurement.
  6. Subset selected (interested) measurements from the merged dataset produced from step 1.
  7. Look up activity id for each record and reference to the corresponding activity name using "merge" function.
  8. Update dataset column names with names of selected features, and remove "()" from the each feature to form the name.
  9. Reshaping the dataset to calculate average value of each measurement for specific subject & activity.
  
    9.1. Use melt() function to create a "wide" tidy data where mean value of each measurement is a column.
    9.1. Use dcast() funciton to create a "tall" tidy data where all measurement become values of "variable" column, and the mean value of each measurement is presented in "value" column
  	

###SubjectID 

  * Subject: Identifier to identify the participant in a group of 30 volunteers within an age bracket of 19-48 years
  * Length: 1 ~ 2 
  * Value: Between 1 to 30
	
###Activity

  * Activity performed by the subject
  * Length: 6 ~ 18
  * Value: one of the following
  
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING 
    6. LAYING
  
###tBodyAcc-mean-X 

  *  In time domain, average value of mean body acceleration for the subject performing given activity from accelerator in X direction collected during experiment
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tBodyAcc-mean-Y 

  *  In time domain, average value of mean body acceleration for the subject performing given activity from accelerator in Y direction collected during experiment
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tBodyAcc-mean-Z 

  *  In time domain, average value of mean body acceleration for the subject performing given activity from accelerator in Z direction collected during experiment
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tGravityAcc-mean-X

  *  In time domain, average value of mean gravity acceleration for the subject performing given activity from accelerator in X direction collected during experiment 
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tGravityAcc-mean-Y 

  *  In time domain, average value of mean gravity acceleration for the subject performing given activity from accelerator in Y direction collected during experiment 
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tGravityAcc-mean-Z 

  *  In time domain, average value of mean gravity acceleration for the subject performing given activity from accelerator in Z direction collected during experiment 
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tBodyAccJerk-mean-X 

  *  In time domain, average value of mean body acceleration of jerk signal for the subject performing given activity from accelerator in X direction collected during experiment 
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tBodyAccJerk-mean-Y 

  *  In time domain, average value of mean body acceleration of jerk signal for the subject performing given activity from accelerator in Y direction collected during experiment 
  *  Data type: real number
  *  Value: between [-1, 1]
  
###tBodyAccJerk-mean-Z 

  * In time domain, average value of mean body acceleration of jerk signal for the subject performing given activity from accelerator in Z direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyro-mean-X

  * In time domain, average value of mean body Angular velocity for the subject performing given activity from gyroscope in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyro-mean-Y 

  * In time domain, average value of mean body angular velocity for the subject performing given activity from gyroscope in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyro-mean-Z 

  * In time domain, average value of mean body angular velocity for the subject performing given activity from gyroscope in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroJerk-mean-X 

  * In time domain, average value of mean body angular velocity of jerk signal for the subject performing given activity from accelerator in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroJerk-mean-Y 

  * In time domain, average value of mean body angular velocity of jerk signal for the subject performing given activity from accelerator in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroJerk-mean-Z 

  * In time domain, average value of mean body angular velocity of jerk signal for the subject performing given activity from accelerator in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAccMag-mean 

  * In time domain, average value of mean body acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tGravityAccMag-mean 

  * In time domain, average value of mean gravity acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAccJerkMag-mean 

  * In time domain, average value of mean body acceleration magnitude of the jerk signal for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroMag-mean 

  * In time domain, average value of mean body angular velocity magnitude for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroJerkMag-mean 

  * In time domain, average value of mean body angular velocity magnitude of the jerk signal for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-mean-X 

  * In frequency domain, average value of mean body acceleration for the subject performing given activity from accelerator in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-mean-Y 

  * In frequency domain, average value of mean body acceleration for the subject performing given activity from accelerator in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-mean-Z

  * In frequency domain, average value of mean body acceleration for the subject performing given activity from accelerator in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-meanFreq-X 

  * In frequency domain, average value of weighted mean body acceleration for the subject performing given activity from accelerator in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-meanFreq-Y

  * In frequency domain, average value of weighted mean body acceleration for the subject performing given activity from accelerator in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-meanFreq-Z 

  * In frequency domain, average value of weighted mean body acceleration for the subject performing given activity from accelerator in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-mean-X 

  * In frequency domain, average value of mean body acceleration of jerk signal for the subject performing given activity from accelerator in X direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-mean-Y

  * In frequency domain, average value of mean body acceleration of jerk signal for the subject performing given activity from accelerator in Y direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-mean-Z

  * In frequency domain, average value of mean body acceleration of jerk signal for the subject performing given activity from accelerator in Z direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-meanFreq-X 

  * In frequency domain, average value of weighted mean body acceleration of jerk signal for the subject performing given activity from accelerator in X direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-meanFreq-Y 

  * In frequency domain, average value of weighted mean body acceleration of jerk signal for the subject performing given activity from accelerator in Y direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-meanFreq-Z

  * In frequency domain, average value of weighted mean body acceleration of jerk signal for the subject performing given activity from accelerator in Z direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-mean-X 

  * In frequency domain, average value of mean body Angular velocity for the subject performing given activity from gyroscope in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-mean-Y 

  * In frequency domain, average value of mean body Angular velocity for the subject performing given activity from gyroscope in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-mean-Z 

  * In frequency domain, average value of mean body Angular velocity for the subject performing given activity from gyroscope in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-meanFreq-X 

  * In frequency domain, average value of weighted mean body Angular velocity for the subject performing given activity from gyroscope in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-meanFreq-Y 

  * In frequency domain, average value of weighted mean body Angular velocity for the subject performing given activity from gyroscope in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-meanFreq-Z 

  * In frequency domain, average value of weighted mean body Angular velocity for the subject performing given activity from gyroscope in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccMag-mean

  * In frequency domain, average value of mean body acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccMag-meanFreq 

  * In fequency domain, average value of weighted mean body acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyAccJerkMag-mean 

  * In fequency domain, average value of mean body acceleration magnitude of the jerk signal for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyAccJerkMag-meanFreq 

  * In fequency domain, average value of weighted mean body acceleration magnitude of the jerk signal for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyGyroMag-mean 

  * In fequency domain, average value of mean body angular velocity magnitude for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyGyroMag-meanFreq

  * In fequency domain, average value of weighted mean body angular velocity magnitude for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyGyroJerkMag-mean 

  * In fequency domain, average value of mean body angular velocity magnitude of the jerk signal for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyGyroJerkMag-meanFreq 

  * In fequency domain, average value of weighted mean body angular velocity magnitude of the jerk signal for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAcc-std-X 

  * In time domain, average value of standard deviation body acceleration for the subject performing given activity from accelerator in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAcc-std-Y 

  * In time domain, average value of standard deviation body acceleration for the subject performing given activity from accelerator in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAcc-std-Z 

  * In time domain, average value of standard deviation body acceleration for the subject performing given activity from accelerator in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tGravityAcc-std-X 

  * In time domain, average value of standard deviation gravity acceleration for the subject performing given activity from accelerator in X direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tGravityAcc-std-Y 

  * In time domain, average value of standard deviation gravity acceleration for the subject performing given activity from accelerator in Y direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tGravityAcc-std-Z 

  * In time domain, average value of standard deviation gravity acceleration for the subject performing given activity from accelerator in Z direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAccJerk-std-X

  * In time domain, average value of standard deviation body acceleration of jerk signal for the subject performing given activity from accelerator in X direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAccJerk-std-Y

  * In time domain, average value of standard deviation body acceleration of jerk signal for the subject performing given activity from accelerator in Y direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAccJerk-std-Z 

  * In time domain, average value of standard deviation body acceleration of jerk signal for the subject performing given activity from accelerator in Z direction collected during experiment 
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyro-std-X 

  * In time domain, average value of standard deviation body Angular velocity for the subject performing given activity from gyroscope in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
 
###tBodyGyro-std-Y

  * In time domain, average value of standard deviation body Angular velocity for the subject performing given activity from gyroscope in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
 
###tBodyGyro-std-Z 

  * In time domain, average value of standard deviation body Angular velocity for the subject performing given activity from gyroscope in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
 
###tBodyGyroJerk-std-X 

  * In time domain, average value of standard deviation body Angular velocity of the jerk signal for the subject performing given activity from gyroscope in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
 
###tBodyGyroJerk-std-Y 

  * In time domain, average value of standard deviation body Angular velocity of the jerk signal for the subject performing given activity from gyroscope in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
 
###tBodyGyroJerk-std-Z 

  * In time domain, average value of standard deviation body Angular velocity of the jerk signal for the subject performing given activity from gyroscope in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
 
###tBodyAccMag-std 

  * In time domain, average value of standard deviation body acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tGravityAccMag-std 

  * In time domain, average value of standard deviation gravity acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyAccJerkMag-std 

  * In time domain, average value of standard deviation body acceleration magnitude of the jerk signal for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroMag-std 

  * In time domain, average value of standard deviation body angular velocity magnitude for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###tBodyGyroJerkMag-std 

  * In time domain, average value of standard deviation body angular velocity magnitude of the jerk signal for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-std-X 

  * In frequency domain, average value of standard deviation body acceleration for the subject performing given activity from accelerator in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-std-Y 

  * In frequency domain, average value of standard deviation body acceleration for the subject performing given activity from accelerator in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAcc-std-Z 

  * In frequency domain, average value of standard deviation body acceleration for the subject performing given activity from accelerator in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-std-X 

  * In frequency domain, average value of standard deviation body acceleration of the jerk signal for the subject performing given activity from accelerator in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-std-Y 

  * In frequency domain, average value of standard deviation body acceleration of the jerk signal for the subject performing given activity from accelerator in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccJerk-std-Z 

  * In frequency domain, average value of standard deviation body acceleration of the jerk signal for the subject performing given activity from accelerator in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-std-X 

  * In frequency domain, average value of standard deviation body Angular velocity for the subject performing given activity from gyroscope in X direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-std-Y 

  * In frequency domain, average value of standard deviation body Angular velocity for the subject performing given activity from gyroscope in Y direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyGyro-std-Z 

  * In frequency domain, average value of standard deviation body Angular velocity for the subject performing given activity from gyroscope in Z direction collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyAccMag-std 

  * In frequency domain, average value of standard deviation body acceleration magnitude for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyAccJerkMag-std 

  * In fequency domain, average value of standard deviation body acceleration magnitude of the jerk signal for the subject performing given activity from accelerator collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyGyroMag-std 

  * In fequency domain, average value of standard deviation body angular velocity magnitude for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
  
###fBodyBodyGyroJerkMag-std

  * In fequency domain, average value of standard deviation body angular velocity magnitude for the subject performing given activity from gyroscope collected during experiment
  * Data type: real number
  * Value: between [-1, 1]
