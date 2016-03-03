Code Book
========
Raw data 
--------

The raw data collection is obtained from UCI Machine Learning repository. 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Data transformation
-------------------

###Merging the training and the test sets to create one data set.
Both training and test sets from features (X_train.txt, X_test.txt), activities (y_train.txt, y_test.txt) and subjects (subject_train.txt,subject_test.txt) are merges together to create a unique dataset. Then, after having renamed data columns of
each data table, the three data tables are merged using "cbind".
###Extracting the measurements on the mean and standard deviation for each measurement.
The command "grepl" is used to find the right features in the merged dataset, ie features which contain "std" and "mean" 
###Using descriptive activity names to name the activities in the data set.
The command "merge" is used to join the two tables features and activities on "activity_id" variable. Then the column
"activity_id" is deleted in order that there remains only the activity name column
###Appropriately labels the data set with descriptive variable names.
The command "gsub" is used to make some subtitutions in the names of the variables in order that these variables can be
easily interpretable.
###Creating a second, independent tidy data set with the average of each variable for each activity and each subject.
This second tidy dataset is created using the "aggregate" command on activity and subject and saved in a .txt file. 

Variables description
---------------------

This is the description of the variables of the tidy dataset created using the memisc package with the codebook command.

================================================================================

   TimeBodyAccelerometer.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.263
        Median:   0.277
          Mean:   0.274
       3rd Qu.:   0.288
          Max.:   1.000

================================================================================

   TimeBodyAccelerometer.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.025
        Median:  -0.017
          Mean:  -0.018
       3rd Qu.:  -0.011
          Max.:   1.000

================================================================================

   TimeBodyAccelerometer.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.121
        Median:  -0.109
          Mean:  -0.109
       3rd Qu.:  -0.098
          Max.:   1.000

================================================================================

   TimeBodyAccelerometer.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.943
          Mean:  -0.608
       3rd Qu.:  -0.250
          Max.:   1.000

================================================================================

   TimeBodyAccelerometer.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.977
        Median:  -0.835
          Mean:  -0.510
       3rd Qu.:  -0.057
          Max.:   1.000

================================================================================

   TimeBodyAccelerometer.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.979
        Median:  -0.851
          Mean:  -0.613
       3rd Qu.:  -0.279
          Max.:   1.000

================================================================================

   TimeGravityAccelerometer.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.812
        Median:   0.922
          Mean:   0.669
       3rd Qu.:   0.955
          Max.:   1.000

================================================================================

   TimeGravityAccelerometer.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.243
        Median:  -0.144
          Mean:   0.004
       3rd Qu.:   0.119
          Max.:   1.000

================================================================================

   TimeGravityAccelerometer.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.117
        Median:   0.037
          Mean:   0.092
       3rd Qu.:   0.216
          Max.:   1.000

================================================================================

   TimeGravityAccelerometer.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.995
        Median:  -0.982
          Mean:  -0.965
       3rd Qu.:  -0.962
          Max.:   1.000

================================================================================

   TimeGravityAccelerometer.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.976
          Mean:  -0.954
       3rd Qu.:  -0.946
          Max.:   1.000

================================================================================

   TimeGravityAccelerometer.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.967
          Mean:  -0.939
       3rd Qu.:  -0.930
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerk.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.063
        Median:   0.076
          Mean:   0.079
       3rd Qu.:   0.091
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerk.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.019
        Median:   0.011
          Mean:   0.008
       3rd Qu.:   0.034
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerk.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.032
        Median:  -0.001
          Mean:  -0.005
       3rd Qu.:   0.025
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerk.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.951
          Mean:  -0.640
       3rd Qu.:  -0.291
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerk.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.925
          Mean:  -0.608
       3rd Qu.:  -0.222
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerk.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.989
        Median:  -0.954
          Mean:  -0.763
       3rd Qu.:  -0.548
          Max.:   1.000

================================================================================

   TimeBodyGyroscope.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.046
        Median:  -0.028
          Mean:  -0.031
       3rd Qu.:  -0.011
          Max.:   1.000

================================================================================

   TimeBodyGyroscope.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.104
        Median:  -0.075
          Mean:  -0.075
       3rd Qu.:  -0.051
          Max.:   1.000

================================================================================

   TimeBodyGyroscope.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:   0.065
        Median:   0.086
          Mean:   0.088
       3rd Qu.:   0.110
          Max.:   1.000

================================================================================

   TimeBodyGyroscope.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.902
          Mean:  -0.721
       3rd Qu.:  -0.482
          Max.:   1.000

================================================================================

   TimeBodyGyroscope.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.911
          Mean:  -0.683
       3rd Qu.:  -0.446
          Max.:   1.000

================================================================================

   TimeBodyGyroscope.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.882
          Mean:  -0.654
       3rd Qu.:  -0.338
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerk.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.117
        Median:  -0.098
          Mean:  -0.097
       3rd Qu.:  -0.079
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerk.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.059
        Median:  -0.041
          Mean:  -0.042
       3rd Qu.:  -0.025
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerk.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.079
        Median:  -0.055
          Mean:  -0.055
       3rd Qu.:  -0.032
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerk.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.935
          Mean:  -0.731
       3rd Qu.:  -0.486
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerk.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.955
          Mean:  -0.786
       3rd Qu.:  -0.627
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerk.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.993
        Median:  -0.950
          Mean:  -0.740
       3rd Qu.:  -0.510
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.875
          Mean:  -0.548
       3rd Qu.:  -0.120
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.844
          Mean:  -0.591
       3rd Qu.:  -0.242
          Max.:   1.000

================================================================================

   TimeGravityAccelerometerMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.875
          Mean:  -0.548
       3rd Qu.:  -0.120
          Max.:   1.000

================================================================================

   TimeGravityAccelerometerMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.982
        Median:  -0.844
          Mean:  -0.591
       3rd Qu.:  -0.242
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerkMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.990
        Median:  -0.948
          Mean:  -0.649
       3rd Qu.:  -0.296
          Max.:   1.000

================================================================================

   TimeBodyAccelerometerJerkMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.929
          Mean:  -0.628
       3rd Qu.:  -0.273
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.822
          Mean:  -0.605
       3rd Qu.:  -0.245
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.826
          Mean:  -0.662
       3rd Qu.:  -0.394
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerkMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.956
          Mean:  -0.762
       3rd Qu.:  -0.550
          Max.:   1.000

================================================================================

   TimeBodyGyroscopeJerkMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.940
          Mean:  -0.778
       3rd Qu.:  -0.609
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.946
          Mean:  -0.623
       3rd Qu.:  -0.265
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.979
        Median:  -0.864
          Mean:  -0.537
       3rd Qu.:  -0.103
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.983
        Median:  -0.895
          Mean:  -0.665
       3rd Qu.:  -0.366
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.993
        Median:  -0.942
          Mean:  -0.603
       3rd Qu.:  -0.249
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.977
        Median:  -0.833
          Mean:  -0.528
       3rd Qu.:  -0.092
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.840
          Mean:  -0.618
       3rd Qu.:  -0.302
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.meanFreq...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.419
        Median:  -0.238
          Mean:  -0.222
       3rd Qu.:  -0.020
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.meanFreq...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.145
        Median:   0.005
          Mean:   0.015
       3rd Qu.:   0.177
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometer.meanFreq...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.138
        Median:   0.061
          Mean:   0.047
       3rd Qu.:   0.249
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.952
          Mean:  -0.657
       3rd Qu.:  -0.327
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.926
          Mean:  -0.629
       3rd Qu.:  -0.264
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.948
          Mean:  -0.744
       3rd Qu.:  -0.513
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.956
          Mean:  -0.655
       3rd Qu.:  -0.320
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.987
        Median:  -0.928
          Mean:  -0.612
       3rd Qu.:  -0.236
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.990
        Median:  -0.959
          Mean:  -0.781
       3rd Qu.:  -0.590
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.meanFreq...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.298
        Median:  -0.045
          Mean:  -0.048
       3rd Qu.:   0.204
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.meanFreq...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.428
        Median:  -0.236
          Mean:  -0.213
       3rd Qu.:   0.009
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerJerk.meanFreq...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.331
        Median:  -0.102
          Mean:  -0.124
       3rd Qu.:   0.091
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.mean...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.892
          Mean:  -0.672
       3rd Qu.:  -0.384
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.mean...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.920
          Mean:  -0.706
       3rd Qu.:  -0.473
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.mean...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.888
          Mean:  -0.644
       3rd Qu.:  -0.323
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.std...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.988
        Median:  -0.905
          Mean:  -0.739
       3rd Qu.:  -0.522
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.std...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.981
        Median:  -0.906
          Mean:  -0.674
       3rd Qu.:  -0.438
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.std...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.986
        Median:  -0.891
          Mean:  -0.690
       3rd Qu.:  -0.417
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.meanFreq...X

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.272
        Median:  -0.099
          Mean:  -0.101
       3rd Qu.:   0.068
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.meanFreq...Y

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.363
        Median:  -0.173
          Mean:  -0.174
       3rd Qu.:   0.014
          Max.:   1.000

================================================================================

   FrequencyBodyGyroscope.meanFreq...Z

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.232
        Median:  -0.054
          Mean:  -0.051
       3rd Qu.:   0.122
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.985
        Median:  -0.875
          Mean:  -0.586
       3rd Qu.:  -0.217
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.983
        Median:  -0.855
          Mean:  -0.659
       3rd Qu.:  -0.382
          Max.:   1.000

================================================================================

   FrequencyBodyAccelerometerMagnitude.meanFreq..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.097
        Median:   0.070
          Mean:   0.077
       3rd Qu.:   0.245
          Max.:   1.000

================================================================================

   FrequencyBodyBodyAccelerometerJerkMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.990
        Median:  -0.929
          Mean:  -0.621
       3rd Qu.:  -0.260
          Max.:   1.000

================================================================================

   FrequencyBodyBodyAccelerometerJerkMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.991
        Median:  -0.925
          Mean:  -0.640
       3rd Qu.:  -0.308
          Max.:   1.000

================================================================================

   FrequencyBodyBodyAccelerometerJerkMagnitude.meanFreq..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.003
        Median:   0.164
          Mean:   0.173
       3rd Qu.:   0.357
          Max.:   1.000

================================================================================

   FrequencyBodyBodyGyroscopeMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.983
        Median:  -0.876
          Mean:  -0.697
       3rd Qu.:  -0.451
          Max.:   1.000

================================================================================

   FrequencyBodyBodyGyroscopeMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.978
        Median:  -0.828
          Mean:  -0.700
       3rd Qu.:  -0.471
          Max.:   1.000

================================================================================

   FrequencyBodyBodyGyroscopeMagnitude.meanFreq..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.234
        Median:  -0.052
          Mean:  -0.042
       3rd Qu.:   0.152
          Max.:   1.000

================================================================================

   FrequencyBodyBodyGyroscopeJerkMagnitude.mean..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.992
        Median:  -0.945
          Mean:  -0.780
       3rd Qu.:  -0.612
          Max.:   1.000

================================================================================

   FrequencyBodyBodyGyroscopeJerkMagnitude.std..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.993
        Median:  -0.938
          Mean:  -0.792
       3rd Qu.:  -0.644
          Max.:   1.000

================================================================================

   FrequencyBodyBodyGyroscopeJerkMagnitude.meanFreq..

--------------------------------------------------------------------------------

   Storage mode: double

          Min.:  -1.000
       1st Qu.:  -0.019
        Median:   0.136
          Mean:   0.127
       3rd Qu.:   0.289
          Max.:   1.000

================================================================================

   subject

--------------------------------------------------------------------------------

   Storage mode: integer

          Min.:   1.000
       1st Qu.:   9.000
        Median:  17.000
          Mean:  16.150
       3rd Qu.:  24.000
          Max.:  30.000

================================================================================

   activity

--------------------------------------------------------------------------------

   Storage mode: integer
   Factor with 6 levels

        Values and labels    N    Percent 
                                          
   1 'LAYING'             1944   18.9     
   2 'SITTING'            1777   17.3     
   3 'STANDING'           1906   18.5     
   4 'WALKING'            1722   16.7     
   5 'WALKING_DOWNSTAIRS' 1406   13.7     
   6 'WALKING_UPSTAIRS'   1544   15.0     

