
### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals (in accordance with assignment) are:
- mean(): Mean value
- std(): Standard deviation


### The variables of tidy data set

- "subject_number" - integer ranges from [1,30], describes the identity of the subject;
- "activity" - factor ranges from [1,6], describes the activity of the subject;
- "feature" - factor ranges from [1,66], describes the measurement types;
- "average_value" - numeric ranges from [-1,1], describes the means of the measurements.


### Description of the levels of variable "features"

tBodyAcc-mean()-X - mean of the mean of the body acceleration signals on the x axis in standard gravity units(g)

tBodyAcc-mean()-Y - mean of the mean of the body acceleration signals on the y axis in standard gravity units(g)

tBodyAcc-mean()-Z - mean of the mean of the body acceleration signals on the z axis in standard gravity units(g)

tBodyAcc-std()-X - mean of the standard deviation of the body acceleration signals on the x axis in standard gravity units(g)

tBodyAcc-std()-Y - mean of the standard deviation of the body acceleration signals on the y axis in standard gravity units(g)

tBodyAcc-std()-Z - mean of the standard deviation of the body acceleration signals on the z axis in standard gravity units(g)

tGravityAcc-mean()-X - mean of the mean of the gravity acceleration signals on the x axis in standard gravity units(g)

tGravityAcc-mean()-Y - mean of the mean of the gravity acceleration signals on the y axis in standard gravity units(g)

tGravityAcc-mean()-Z - mean of the mean of the gravity acceleration signals on the z axis in standard gravity units(g)

tGravityAcc-std()-X - mean of the standard deviation of the gravity acceleration signals on the x axis in standard gravity units(g)

tGravityAcc-std()-Y - mean of the standard deviation of the gravity acceleration signals on the y axis in standard gravity units(g)

tGravityAcc-std()-Z - mean of the standard deviation of the gravity acceleration signals on the z axis in standard gravity units(g)

tBodyAccJerk-mean()-X - mean of the mean of the body linear acceleration signals derived in time on the x axis in standard gravity units(g)

tBodyAccJerk-mean()-Y - mean of the mean of the body linear acceleration signals derived in time on the y axis in standard gravity units(g)

tBodyAccJerk-mean()-Z - mean of the mean of the body linear acceleration signals derived in time on the z axis in standard gravity units(g)

tBodyAccJerk-std()-X - mean of the standard deviation of the body linear acceleration signals derived in time on the x axis in standard gravity units(g) 

tBodyAccJerk-std()-Y - mean of the standard deviation of the body linear acceleration signals derived in time on the y axis in standard gravity units(g)

tBodyAccJerk-std()-Z - mean of the standard deviation of the body linear acceleration signals derived in time on the z axis in standard gravity units(g)         

tBodyGyro-mean()-X - mean of the mean of the angular velocity signals on the x axis in standard gravity units(g) 

tBodyGyro-mean()-Y - mean of the mean of the angular velocity signals on the y axis in standard gravity units(g)

tBodyGyro-mean()-Z - mean of the mean of the angular velocity signals on the x axis in standard gravity units(g)

tBodyGyro-std()-X - mean of the standard deviation of the angular velocity signals on the x axis in standard gravity units(g)

tBodyGyro-std()-Y - mean of the standard deviation of the angular velocity signals on the y axis in standard gravity units(g)

tBodyGyro-std()-Z - mean of the standard deviation of the angular velocity signals on the z axis in standard gravity units(g) 

tBodyGyroJerk-mean()-X - mean of the mean of the angular velocity signals derived in time on the x axis

tBodyGyroJerk-mean()-Y - mean of the mean of the angular velocity signals derived in time on the y axis

tBodyGyroJerk-mean()-Z - mean of the mean of the angular velocity signals derived in time on the z axis

tBodyGyroJerk-std()-X - mean of the standard deviation of the angular velocity signals derived in time on the x axis

tBodyGyroJerk-std()-Y - mean of the standard deviation of the angular velocity signals derived in time on the y axis

tBodyGyroJerk-std()-Z - mean of the standard deviation of the angular velocity signals derived in time on the z axis

tBodyAccMag-mean() - mean of the mean of the magnitude of the body acceleration signals

tBodyAccMag-std() - mean of the standard deviation of the magnitude of the body acceleration signals

tGravityAccMag-mean() - mean of the mean of the magnitude of the gravity acceleration signals

tGravityAccMag-std() - mean of the standard deviation of the magnitude of the gravity acceleration signals

tBodyAccJerkMag-mean() - mean of the mean of the magnitude of the body acceleration signals derived in time 

tBodyAccJerkMag-std() - mean of the standard deviation of the magnitude of the body acceleration signals derived in time

tBodyGyroMag-mean() - mean of the mean of the magnitude of the angular velocity signals

tBodyGyroMag-std() - mean of the standard deviation of the magnitude of the angular velocity signals

tBodyGyroJerkMag-mean() - mean of the mean of the magnitude of the angular velocity signals derived in time
    
tBodyGyroJerkMag-std() - mean of the standard deviation of the magnitude of the angular velocity signals derived in time

fBodyAcc-mean()-X - mean of the mean of the body acceleration signals on the x axis with a fast fourier transformation 

fBodyAcc-mean()-Y - mean of the mean of the body acceleration signals on the y axis with a fast fourier transformation

fBodyAcc-mean()-Z - mean of the mean of the body acceleration signals on the z axis with a fast fourier transformation 

fBodyAcc-std()-X - mean of the standard deviation of the body acceleration signals on the x axis with a fast fourier transformation

fBodyAcc-std()-Y - mean of the standard deviation of the body acceleration signals on the y axis with a fast fourier transformation

fBodyAcc-std()-Z - mean of the standard deviation of the body acceleration signals on the z axis with a fast fourier transformation

fBodyAccJerk-mean()-X - mean of the mean of the body acceleration signals derived in time on the z axis with a fast fourier transformation

fBodyAccJerk-mean()-Y - mean of the mean of the body acceleration signals derived in time on the y axis with a fast fourier transformation

fBodyAccJerk-mean()-Z - mean of the mean of the body acceleration signals derived in time on the z axis with a fast fourier transformation  

fBodyAccJerk-std()-X - mean of the standard deviation of the body acceleration signals derived in time on the x axis with a fast fourier transformation

fBodyAccJerk-std()-Y - mean of the standard deviation of the body acceleration signals derived in time on the y axis with a fast fourier transformation

fBodyAccJerk-std()-Z - mean of the standard deviation of the body acceleration signals derived in time on the z axis with a fast fourier transformation       

fBodyGyro-mean()-X - mean of the mean of the angular velocity signals on the x axis with a fast fourier transformation 

fBodyGyro-mean()-Y - mean of the mean of the angular velocity signals on the y axis with a fast fourier transformation

fBodyGyro-mean()-Z - mean of the mean of the angular velocity signals on the z axis with a fast fourier transformation

fBodyGyro-std()-X - mean of the standard deviation of the angular velocity signals on the x axis with a fast fourier transformation

fBodyGyro-std()-Y - mean of the standard deviation of the angular velocity signals on the y axis with a fast fourier transformation

fBodyGyro-std()-Z - mean of the standard deviation of the angular velocity signals on the z axis with a fast fourier transformation

fBodyAccMag-mean() - mean of the mean of the magnitude of the body acceleration signals with a fast fourier transformation 

fBodyAccMag-std() - mean of the standard deviation of the magnitude of the body acceleration signals with a fast fourier transformation

fBodyBodyAccJerkMag-mean() - mean of the mean of the magnitude of the body acceleration signals derived in time with a fast fourier transformation

fBodyBodyAccJerkMag-std() - mean of the standard deviation of the magnitude of the body acceleration signals derived in time with a fast fourier transformation  

fBodyBodyGyroMag-mean() - mean of the mean of the magnitude of the angular velocity signals with a fast fourier transformation

fBodyBodyGyroMag-std() - mean of the standard deviation of the magnitude of the angular velocity signals with a fast fourier transformation

fBodyBodyGyroJerkMag-mean() - mean of the mean of the magnitude of the angular velocity signals derived in time with a fast fourier transformation

fBodyBodyGyroJerkMag-std() - mean of the standard deviation of the magnitude of the angular velocity signals derived in time with a fast fourier transformation
</markdown></p>
