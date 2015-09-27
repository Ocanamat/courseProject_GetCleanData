# Getting and Cleaning Data: Course Project
This repository contains the script run_analysis.R, as required for the "Getting and Cleaning Data" Course Project, part of the Data Science Specialization

## Synopsis

run_analysis.R will create a series of dataFrames and tbls in order to:

	1. Create a training and test dataSets with the feature vectors from the raw data.
	2. Add the subject IDs and activity names to the created train and test dataSets.
	3. Merge the training and the test dataSets to create one data set.
	4. Beautify the columNames in order to make them valid for dplyr manipulation.
    5. Extract only the measurements on the mean and standard deviation for each measurement. 
    6. Rename Activity names to descriptive (readable) name the activities in the data set.
    and finally
    7. Creates "tidyData_HumanActivity", an independent tidy data set with the average of each variable for each activity and each subject.

## Requirements

A few assumptions are made by this script:

	1. A folder named "UCI HAR Dataset" exists within the working directory from which this script is run. This folder must contain the outputs of unzipping the raw data extracted from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	
	2. Packages "dplyr", "tidyr", "plyr" are installed in the host machine

## Code Example

library(dplyr)
library(tidyr)
library(plyr)
run_analysis.R



