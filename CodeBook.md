## Code Book for tidy_data.txt

tidy_data.txt is a data set generated from the Human Activity Recognition Using Smartphones Dataset. It consists of the mean values for certain features found in the raw data set, corresponding to each subject performing each specific activity. Only the features represending the calculation of mean() and std() on the raw data have been included. Wherever possible, all labels and variable names have been kept identical to those found in the raw data set to make translation between the two as clear as possible. However, special characters (hyphens and parentheses) have been removed. Overall the data consists of 180 observations of 68 variables.
  
  
  
#### Variable Descriptions

**subject**  
The ID number of the participant who took part in the experiemnt. Values are integers in the range 1 to 30.

**activity**  
The activity performed while measurements were taken. Possible values are one of the following 6 strings:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

---

*The following feature variables represent the mean of all the values for the corresponding feature in the raw data set associated with each subject performing each specific activity. Further explanation of each variable symbol can be found below.*

**tBodyAccMeanX**, **tBodyAccMeanY**, **tBodyAccMeanZ**  
**tBodyAccStdX**, **tBodyAccStdY**, **tBodyAccStdZ**  
**tGravityAccMeanX**, **tGravityAccMeanY**, **tGravityAccMeanZ**  
**tGravityAccStdX**, **tGravityAccStdY**, **tGravityAccStdZ**  
**tBodyAccJerkMeanX**, **tBodyAccJerkMeanY**, **tBodyAccJerkMeanZ**  
**tBodyAccJerkStdX**, **tBodyAccJerkStdY**, **tBodyAccJerkStdZ**  
**tBodyGyroMeanX**, **tBodyGyroMeanY**, **tBodyGyroMeanZ**  
**tBodyGyroStdX**, **tBodyGyroStdY**, **tBodyGyroStdZ**  
**tBodyGyroJerkMeanX**, **tBodyGyroJerkMeanY**, **tBodyGyroJerkMeanZ**  
**tBodyGyroJerkStdX**, **tBodyGyroJerkStdY**, **tBodyGyroJerkStdZ**  
**tBodyAccMagMean**  
**tBodyAccMagStd**  
**tGravityAccMagMean**  
**tGravityAccMagStd**  
**tBodyAccJerkMagMean**  
**tBodyAccJerkMagStd**  
**tBodyGyroMagMean**  
**tBodyGyroMagStd**  
**tBodyGyroJerkMagMean**  
**tBodyGyroJerkMagStd**  
**fBodyAccMeanX**, **fBodyAccMeanY**, **fBodyAccMeanZ**  
**fBodyAccStdX**, **fBodyAccStdY**, **fBodyAccStdZ**  
**fBodyAccJerkMeanX**, **fBodyAccJerkMeanY**, **fBodyAccJerkMeanZ**  
**fBodyAccJerkStdX**, **fBodyAccJerkStdY**, **fBodyAccJerkStdZ**  
**fBodyGyroMeanX**, **fBodyGyroMeanY**, **fBodyGyroMeanZ**  
**fBodyGyroStdX**, **fBodyGyroStdY**, **fBodyGyroStdZ**  
**fBodyAccMagMean**  
**fBodyAccMagStd**  
**fBodyAccJerkMagMean**  
**fBodyAccJerkMagStd**  
**fBodyGyroMagMean**  
**fBodyGyroMagStd**  
**fBodyGyroJerkMagMean**  
**fBodyGyroJerkMagStd**  

All feature variable values are in the range -1 to 1.

| Symbol | Description |
| --- | --- |
| t |   A variable calculated in the time domain |
| f	| A variable calculated in the frequency domain |
| Body | Body acceleration signal |
| Gravity |	Gravity acceleration signal |
| Acc |	A signal recorded by the accelerometer |
| Gyro |	A signal recorded by the gyroscope |
| Jerk |	Jerk signal |
| Mag |	Magnitude of a signal |
| Mean |	The mean value of all measurements for a certain variable captured within a specified window |
| Std |	The standard deviation of all measurements for a certain variable captured within a specified window |
| X	| Measurement made in the X-axis |
| Y |	Measurement made in the Y-axis |
| Z	| Measurement made in the Z-axis |