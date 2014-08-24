run_analysis <- function() {
    ## Ensure the 'reshape2' package is installed before proceding
    if (!require(reshape2)) stop("'reshape2' package not installed")
    
    ## Read 'test' feature, subject and activity data
    testRows <- read.table("./UCI HAR Dataset/test/x_test.txt",
                           colClasses = "numeric")
    testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                               colClasses = "integer")
    testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt",
                                 colClasses = "integer")
    
    ## Combine 'test' data into a single table
    testRows <- cbind(testSubjects, testActivities, testRows)
    
    ## Read 'train' feature, subject and activity data
    trainRows <- read.table("./UCI HAR Dataset/train/x_train.txt",
                            colClasses = "numeric")
    trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                                colClasses = "integer")
    trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt",
                                  colClasses = "integer")
    
    ## Combine 'train' data into a single table
    trainRows <- cbind(trainSubjects, trainActivities, trainRows)
    
    ## Combine 'test' and 'train' tables
    mergedData <- rbind(testRows, trainRows)
    
    ## Extract mean() and std() data
    featureNames <- read.table("./UCI HAR Dataset/features.txt",
                               colClasses = "character")[, 2]
    desiredFeatures <- grepl("mean\\()|std\\()", featureNames)
    mergedData <- mergedData[c(TRUE, TRUE, desiredFeatures)]
    
    ## Replace each activity code with its corresponding activity label
    activityNames <- read.table("./UCI HAR Dataset/activity_labels.txt",
                                colClasses = "character")[, 2]
    mergedData[, 2] <- sapply(mergedData[, 2], function(x) {activityNames[x]})
    
    ## Clean the feature labels
    featureNames <- featureNames[desiredFeatures]
    patterns <- c("-", "BodyBody", "mean()", "std()")
    replacements <- c("", "Body", "Mean", "Std")
    for (i in seq_along(patterns)) {
        featureNames <- gsub(patterns[i], replacements[i], featureNames,
                             fixed = TRUE)
    }
    
    ## Label the columns of the data set
    names(mergedData) <- c("subject", "activity", featureNames)
    
    ## Create a data set with the mean of each variable for each activity and
    ## each subject
    mergedMelt <- melt(mergedData, id = c("subject", "activity"))
    tidy <- dcast(mergedMelt, subject + activity ~ variable, mean)
    
    ## Write the tidy data set to a txt file
    write.table(tidy, "tidy_data.txt", row.names = FALSE)
    
    if (file.exists("tidy_data.txt")) {
        message("tidy_data.txt was successfully created")
    } else {
        warning("Data file creation was unsuccessful!")
    }
}