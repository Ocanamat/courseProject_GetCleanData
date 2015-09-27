# Codebook: tidyData_HumanActivity.txt

## Data source
The dataset for this project come originally from the work "Human Activity Recognition Using Smartphones Data Set". 
The study is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and the raw data can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables Descriptions
The naming closely follows that of the original dataSet. Please refer to features.txt for a full variable table of all the variables used in the work. For a description of how some of the variables were obtained, please refer to features_info.txt

From these files you will find the following description:

<<
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The reasoning behind my selection of features is that the assignment explicitly states "Extracts only the measurements on the mean and standard deviation for each measurement."
To be complete, I included all variables having to do with mean or standard deviation.

In short, for this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated (and the ones used for this project) from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

Note: features are normalized and bounded within [-1,1].
>>

Additionally, the leading columns of the tidy dataSet are subjectID and activityName, which identify either the subject for the given observation or the activity he/she was performing.

## Variables Names

[1] "activityName"                         "subjectID"                            "tBodyAcc.mean.X"                      "tBodyAcc.mean.Y"                     
 [5] "tBodyAcc.mean.Z"                      "tGravityAcc.mean.X"                   "tGravityAcc.mean.Y"                   "tGravityAcc.mean.Z"                  
 [9] "tBodyAccJerk.mean.X"                  "tBodyAccJerk.mean.Y"                  "tBodyAccJerk.mean.Z"                  "tBodyGyro.mean.X"                    
[13] "tBodyGyro.mean.Y"                     "tBodyGyro.mean.Z"                     "tBodyGyroJerk.mean.X"                 "tBodyGyroJerk.mean.Y"                
[17] "tBodyGyroJerk.mean.Z"                 "tBodyAccMag.mean"                     "tGravityAccMag.mean"                  "tBodyAccJerkMag.mean"                
[21] "tBodyGyroMag.mean"                    "tBodyGyroJerkMag.mean"                "fBodyAcc.mean.X"                      "fBodyAcc.mean.Y"                     
[25] "fBodyAcc.mean.Z"                      "fBodyAcc.meanFreq.X"                  "fBodyAcc.meanFreq.Y"                  "fBodyAcc.meanFreq.Z"                 
[29] "fBodyAccJerk.mean.X"                  "fBodyAccJerk.mean.Y"                  "fBodyAccJerk.mean.Z"                  "fBodyAccJerk.meanFreq.X"             
[33] "fBodyAccJerk.meanFreq.Y"              "fBodyAccJerk.meanFreq.Z"              "fBodyGyro.mean.X"                     "fBodyGyro.mean.Y"                    
[37] "fBodyGyro.mean.Z"                     "fBodyGyro.meanFreq.X"                 "fBodyGyro.meanFreq.Y"                 "fBodyGyro.meanFreq.Z"                
[41] "fBodyAccMag.mean"                     "fBodyAccMag.meanFreq"                 "fBodyBodyAccJerkMag.mean"             "fBodyBodyAccJerkMag.meanFreq"        
[45] "fBodyBodyGyroMag.mean"                "fBodyBodyGyroMag.meanFreq"            "fBodyBodyGyroJerkMag.mean"            "fBodyBodyGyroJerkMag.meanFreq"       
[49] "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMeangravityMean."   "angle.tBodyGyroMean.gravityMean."     "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                 "angle.Y.gravityMean."                 "angle.Z.gravityMean."                 "tBodyAcc.std.X"                      
[57] "tBodyAcc.std.Y"                       "tBodyAcc.std.Z"                       "tGravityAcc.std.X"                    "tGravityAcc.std.Y"                   
[61] "tGravityAcc.std.Z"                    "tBodyAccJerk.std.X"                   "tBodyAccJerk.std.Y"                   "tBodyAccJerk.std.Z"                  
[65] "tBodyGyro.std.X"                      "tBodyGyro.std.Y"                      "tBodyGyro.std.Z"                      "tBodyGyroJerk.std.X"                 
[69] "tBodyGyroJerk.std.Y"                  "tBodyGyroJerk.std.Z"                  "tBodyAccMag.std"                      "tGravityAccMag.std"                  
[73] "tBodyAccJerkMag.std"                  "tBodyGyroMag.std"                     "tBodyGyroJerkMag.std"                 "fBodyAcc.std.X"                      
[77] "fBodyAcc.std.Y"                       "fBodyAcc.std.Z"                       "fBodyAccJerk.std.X"                   "fBodyAccJerk.std.Y"                  
[81] "fBodyAccJerk.std.Z"                   "fBodyGyro.std.X"                      "fBodyGyro.std.Y"                      "fBodyGyro.std.Z"                     
[85] "fBodyAccMag.std"                      "fBodyBodyAccJerkMag.std"              "fBodyBodyGyroMag.std"                 "fBodyBodyGyroJerkMag.std"       