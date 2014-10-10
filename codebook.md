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

###Columns in tidy dataset
**activity**

* LAYING
* SITTING
* STANDING
* WALKING 
* WALKING_DOWNSTAIRS   
* WALKING_UPSTAIRS

**subject**

The ids of 30 members. ranging from 1 to 30.

**type**

* BodyAcc
* BodyAccJerk
* BodyAccJerkMag
* BodyAccMag
* BodyBodyAccJerkMag
* BodyBodyGyroJerkMag
* BodyBodyGyroMag
* BodyGyro
* BodyGyroJerk
* BodyGyroJerkMag
* BodyGyroMag
* GravityAcc
* GravityAccMag

**statistics**

* mean
* std

**co-ordinates**

* NA, not applicable
* X
* Y   
* Z 

**domain**     

* f - frequency domain
* t - time domain

**measurement**

* mean of each member-activity combinations ranging from -0.9957 to 0.9626

