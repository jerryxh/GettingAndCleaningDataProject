Code Book
========================================================

Study Design
----------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

Data Book
------------------------

## Background and Process
The following data was provided for each record in the original dataset:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

This data was captured in the following files:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.
 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

An R script called run_analysis.R was written that does the following:

- Merges the training and the test sets to create one data set (data = train/X_train.txt + test/X_test.txt + train/y_train.txt + test/y_test.txt + train/subject_train.txt + test/subject_test.txt).
- Extracts only the measurements on the mean and standard deviation for each measurement using the features listed in the features.txt file. 
- Uses descriptive activity names to name the activities in the data set using the activities listed in the activity_labels.txt file.
- Appropriately labels the data set with descriptive variable names (replaced "t" with "Time", "f" with "Frequency", and "Acc" with "Accelerometer"). 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject (saved in tidydataset.txt). 


## Variables
-----------------------
| Variable | Description/Units
-----------|------------------
| Subject | Subject who performed activity, ranges from 1 to 30
| Activity | Activity performed, either WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
| TimeBodyAccelerometer-mean()-X | X-axis mean body acceleration in time domain
| TimeBodyAccelerometer-mean()-Y | Y-axis mean body acceleration in time domain
| TimeBodyAccelerometer-mean()-Z | Z-axis mean body acceleration in time domain
| TimeBodyAccelerometer-std()-X | X-axis body acceleration in time domain, standard deviation
| TimeBodyAccelerometer-std()-Y | Y-axis body acceleration in time domain, standard deviation
| TimeBodyAccelerometer-std()-Z | Z-axis body acceleration in time domain, standard deviation
| TimeGravityAccelerometer-mean()-X | X-axis mean gravity acceleration in time domain
| TimeGravityAccelerometer-mean()-Y | Y-axis mean gravity acceleration in time domain
| TimeGravityAccelerometer-mean()-Z | Z-axis mean gravity acceleration in time domain
| TimeGravityAccelerometer-std()-X | X-axis gravity acceleration in time domain, standard deviation
| TimeGravityAccelerometer-std()-Y | Y-axis gravity acceleration in time domain, standard deviation
| TimeGravityAccelerometer-std()-Z | Z-axis gravity acceleration in time domain, standard deviation
| TimeBodyAccelerometerJerk-mean()-X | X-axis mean body acceleration in time domain - jerk
| TimeBodyAccelerometerJerk-mean()-Y | Y-axis mean body acceleration in time domain - jerk
| TimeBodyAccelerometerJerk-mean()-Z | Z-axis mean body acceleration in time domain - jerk
| TimeBodyAccelerometerJerk-std()-X | X-axis gravity acceleration in time domain - jerk, standard deviation
| TimeBodyAccelerometerJerk-std()-Y | Y-axis gravity acceleration in time domain - jerk, standard deviation
| TimeBodyAccelerometerJerk-std()-Z | Z-axis gravity acceleration in time domain - jerk, standard deviation
| TimeBodyGyro-mean()-X | X-axis mean body angular velocity in time domain
| TimeBodyGyro-mean()-Y | Y-axis mean body angular velocity in time domain
| TimeBodyGyro-mean()-Z | Z-axis mean body angular velocity in time domain
| TimeBodyGyro-std()-X | X-axis body angular velocity in time domain, standard deviation
| TimeBodyGyro-std()-Y | Y-axis body angular velocity in time domain, standard deviation
| TimeBodyGyro-std()-Z | Z-axis body angular velocity in time domain, standard deviation
| TimeBodyGyroJerk-mean()-X | X-axis mean body angular velocity in time domain - jerk
| TimeBodyGyroJerk-mean()-Y | Y-axis mean body angular velocity in time domain - jerk
| TimeBodyGyroJerk-mean()-Z | Z-axis mean body angular velocity in time domain - jerk
| TimeBodyGyroJerk-std()-X | X-axis body angular velocity in time domain - jerk, standard deviation
| TimeBodyGyroJerk-std()-Y | Y-axis body angular velocity in time domain - jerk, standard deviation
| TimeBodyGyroJerk-std()-Z | Z-axis body angular velocity in time domain - jerk, standard deviation
| TimeBodyAccelerometerMag-mean() | Mean magnitude of body accleration in time domain
| TimeBodyAccelerometerMag-std() |  Magnitude of body acceleration in time domain, standard deviation
| TimeGravityAccelerometerMag-mean() | Mean magnitude of gravity accleration in time domain
| TimeGravityAccelerometerMag-std() | Magnitude of gravity acceleration in time domain, standard deviation
| TimeBodyAccelerometerJerkMag-mean() | Mean magnitude of body accleration in time domain - jerk
| TimeBodyAccelerometerJerkMag-std() | Magnitude of body acceleration in time domain - jerk, standard deviation
| TimeBodyGyroMag-mean() | Mean magnitude of body angular velocity in time domain
| TimeBodyGyroMag-std() | Magnitude of body angular velocity in time domain, standard deviation 
| TimeBodyGyroJerkMag-mean() | Mean magnitude of body angular velocity in time domain - jerk
| TimeBodyGyroJerkMag-std() | Magnitude of body angular velocity in time domain - jerk, standard deviation
| FrequencyBodyAccelerometer-mean()-X | Same as above, but for frequency domain
| FrequencyBodyAccelerometer-mean()-Y | Same as above, but for frequency domain
| FrequencyBodyAccelerometer-mean()-Z | Same as above, but for frequency domain
| FrequencyBodyAccelerometer-std()-X | Same as above, but for frequency domain
| FrequencyBodyAccelerometer-std()-Y | Same as above, but for frequency domain
| FrequencyBodyAccelerometer-std()-Z | Same as above, but for frequency domain
| FrequencyBodyAccelerometerJerk-mean()-X | Same as above, but for frequency domain 
| FrequencyBodyAccelerometerJerk-mean()-Y | Same as above, but for frequency domain
| FrequencyBodyAccelerometerJerk-mean()-Z | Same as above, but for frequency domain
| FrequencyBodyAccelerometerJerk-std()-X | Same as above, but for frequency domain
| FrequencyBodyAccelerometerJerk-std()-Y | Same as above, but for frequency domain
| FrequencyBodyAccelerometerJerk-std()-Z | Same as above, but for frequency domain
| FrequencyBodyGyro-mean()-X | Same as above, but for frequency domain
| FrequencyBodyGyro-mean()-Y | Same as above, but for frequency domain
| FrequencyBodyGyro-mean()-Z | Same as above, but for frequency domain
| FrequencyBodyGyro-std()-X | Same as above, but for frequency domain 
| FrequencyBodyGyro-std()-Y | Same as above, but for frequency domain
| FrequencyBodyGyro-std()-Z | Same as above, but for frequency domain
| FrequencyBodyAccelerometerMag-mean() | Same as above, but for frequency domain 
| FrequencyBodyAccelerometerMag-std() | Same as above, but for frequency domain
| FrequencyBodyBodyAccelerometerJerkMag-mean() | Same as above, but for frequency domain
| FrequencyBodyBodyAccelerometerJerkMag-std() | Same as above, but for frequency domain
| FrequencyBodyBodyGyroMag-mean() | Same as above, but for frequency domain
| FrequencyBodyBodyGyroMag-std() | Same as above, but for frequency domain
| FrequencyBodyBodyGyroJerkMag-mean() | Same as above, but for frequency domain
| FrequencyBodyBodyGyroJerkMag-std() | Same as above, but for frequency domain