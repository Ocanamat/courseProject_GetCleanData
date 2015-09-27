## Download Data File
#sourceData_path <- paste(getwd(), "/", "sourceData_MachineHumanActivityRecog_Sept2015.zip", sep = "")
#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = sourceData_path)
#unzip(sourceData_path)

## Change Working Directory to Unzipped Dataset Folder
setwd(paste(getwd(),"/UCI HAR Dataset", sep = ""))

## Create Paths of test and train Data, Activity and Subject files
path_testData <- paste(getwd(), "/test/X_test.txt", sep = "")
path_trainData <- paste(getwd(), "/train/X_train.txt", sep = "")

path_testActivity <- paste(getwd(), "/test/y_test.txt", sep = "")
path_trainActivity <- paste(getwd(), "/train/y_train.txt", sep = "")

path_testSubjects <- paste(getwd(), "/test/subject_test.txt", sep = "")
path_trainSubjects <- paste(getwd(), "/train/subject_train.txt", sep = "")

## Create path of all the Variable Names from feature file
path_variableNames <- paste(getwd() , "/features.txt", sep = "")

## Read test and train datas into dataFrames
df_testData <- fread(input = path_testData, header = FALSE)
df_trainData <- fread(input = path_trainData, header = FALSE)

## Read test and train, subject and activity files
df_testSubjects <- fread(input = path_testSubjects)
df_trainSubjects <- fread(input = path_trainSubjects)
df_testActivity <- fread(input = path_testActivity)
df_trainActivity <- fread(input = path_trainActivity)

## Read Varaible Names
df_variableNames <- fread(input = path_variableNames)

## Assign column names to test and train dataSets
colnames(df_testData) <- df_variableNames$V2
colnames(df_trainData) <- df_variableNames$V2

## Create test and train dataframes where first 2 columns are subjectsID and activityName, followed by the rest of the test and train dataSets
fullDF_testData <- cbind(subjectID = df_testSubjects$V1, activityName = df_testActivity$V1, df_testData)
fullDF_trainData <- cbind(subjectID = df_trainSubjects$V1, activityName = df_trainActivity$V1, df_trainData)

## Change dataframes into tbl for easier manipulation with dplyr and tidyr
tbl_testData <- tbl_df(fullDF_testData)
tbl_trainData <- tbl_df(fullDF_trainData)

## Assignment (1) Merge the test and train dataSets
tbl_HumanActData <- rbind(tbl_testData, tbl_trainData)

## Rename columns in order to avoid duplicate ColNames error
valid_column_names <- make.names(names=names(tbl_HumanActData), unique=TRUE, allow_ = TRUE)
names(tbl_HumanActData) <- valid_column_names

## Select columns 1 and 2, and all other columns containing either "mean" or "std"" in their name
tbl_stdMean_HumanActData <- select(tbl_HumanActData, 1:2, contains("mean"), contains("std"))

## Rename column to remove "..." and ".." leftover from writing valid column names operation
corrected_columnNames <- gsub("...", ".", columnNames, fixed = TRUE)
names(tbl_stdMean_HumanActData) <- corrected_columnNames
corrected_columnNames <- gsub("..", "", corrected_columnNames, fixed = TRUE)
names(tbl_stdMean_HumanActData) <- corrected_columnNames

## Reselect data as in requirement (2)
tbl_stdMean_HumanActData <- select(tbl_HumanActData, 1:2, contains("mean"), contains("std"))

## Create vector of Activity labels
activity_factorLabels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

## Remap integer values to valid activity names as per requirement (3)
library(plyr)
tbl_stdMean_HumanActData$activityName <- mapvalues(tbl_stdMean_HumanActData$activityName, from = c(1:6), to = activity_factorLabels)

## Group tbl by activity name and subjectID in order to complete requirement (5)
tidyHumanActData <- group_by(tbl_stdMean_HumanActData,activityName, subjectID)

## After grouping, summarizing provides the requested tidy Data (5)
means_tidyHumanActData <- summarize_each(tidyHumanActData, funs = "mean")

## Write the tidy data to an external text file
#path_writeTidyData <- paste(getwd(), "/tidyData_HumanActivity.txt", sep = "")
#write.table(x = arrange(means_tidyHumanActData, subjectID), file = path_writeTidyData, row.name=FALSE)
