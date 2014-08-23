#### Description

run_analysis.R consists of a single function run_analysis() that takes raw data from the UCI Human Activity Recognition dataset
and generates a clean data set by doing the following:

* Merging the training and test sets to create one data set.
* Extracting only the measurements on the mean and standard deviation for each measurement.
* Naming the activities in the data set with descriptive labels.
* Appropriately labelling the data set with descriptive variable names, including the removal of special characters (hyphens and parentheses) from the variable names found in the raw data set.
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject. 

#### Arguments

run_analysis() takes no arguments.

#### Output

A file named "tidy_data.txt" is created in the Working Directory containing the new data.

#### Dependencies

It is required that the 'reshape2' R package is installed.

The following files and directory structure are assumed to be present in the Working Directory:

./UCI HAR Dataset/features.txt  
./UCI HAR Dataset/activity_labels.txt  
./UCI HAR Dataset/test/x_test.txt  
./UCI HAR Dataset/test/y_test.txt  
./UCI HAR Dataset/test/subject_test.txt  
./UCI HAR Dataset/train/x_train.txt  
./UCI HAR Dataset/train/y_train.txt  
./UCI HAR Dataset/train/subject_train.txt

#### Usage

The R script can be executed by entering the following into the R console:

```
source("run_analysis.R")
run_analysis()
```
*Assuming that run_analysis.R is located in the Working Directory.*

The resulting data set can be loaded into R as follows:

```
read.table("tidy_data.txt", header = TRUE)
```