##Codebook

###Process performed on the raw data
1. Merged test and training datasets together.
2. Labeled all the 561 features from features.txt.
3. Replaced the activity IDs with corresponding activity labels.
4. Keep only the mean and std features
5. Transformed into key-value pairs so that we have one observation per row
6. Split the features into logical groups such as domain, coordinates, measurements, and statistics.
7. This is the final tidy dataset.
8. Aggregated the final tidy dataset to calculate the mean of the measurements for each member-activity.

###Columns in final aggregated tidy dataset
The following list indicates the columns in the tidy dataset, followed by the possible values that each column contains.
**activity**

* LAYING
* SITTING
* STANDING
* WALKING 
* WALKING_DOWNSTAIRS   
* WALKING_UPSTAIRS

**subject**
range is from 1 to 30 integers.
The ids of 30 members. ranging from 1 to 30.

**type**

* BodyAcc - represented in standard gravity units 'g'
* BodyAccJerk - represented in standard gravity units 'g'
* BodyAccJerkMag - represented in standard gravity units 'g'
* BodyAccMag  - represented in standard gravity units 'g'
* BodyBodyAccJerkMag  - represented in standard gravity units 'g'
* BodyBodyGyroJerkMag - represented in radians/second
* BodyBodyGyroMag- represented in radians/second
* BodyGyro- represented in radians/second
* BodyGyroJerk- represented in radians/second
* BodyGyroJerkMag- represented in radians/second
* BodyGyroMag- represented in radians/second
* GravityAcc - represented in standard gravity units 'g'
* GravityAccMag - represented in standard gravity units 'g'

**statistics**

* mean - mean statistic of the different measurement types
* std - standard deviaiton statistic of the different measurement types

**co-ordinates**

* NA, not applicable (axis is not applicable)
* X - represents X axis
* Y - represents Y axis
* Z - represents Z axis

**domain**     

* f - measurement represents frequency domain
* t - measurement reprsents time domain

**measurement**

* mean of each member-activity combinations ranging from -0.9957 to 0.9626

