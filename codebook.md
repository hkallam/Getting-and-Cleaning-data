**Transformations explanation:**
 
*  final_data_set is the raw dataset got after merging the train and test datasets,assigning the features,and assigning        
   the activity lablels.
 
*  gather function is used  on the final_data_set to transform into a meaningful dataset called df1.loaded dplyr 
    and tidyr packages for this purpose

*   used str_split_fixed function to seperate tBodyAcc-mean()-X  .Here we got tBodyAcc  mean()  X
    substr function is used to split further tBodyAcc.Here we got t BodyAcc.  For this purpose loaded stringr package
 
*   tidy_data is the  final tidy dataset  in which descriptive variable names are used.
 
*   Replaced NA(not applicable) in the place of blanks in co-ordinates column. 
 
*   final is the second tidy data set with descriptive variable names and average of each variable for each activity and 
    each subject.USed aggregate function to find the average.

**Variables:**

1.activity--> an activity label    performed by 30 volunteers 
              Each volunteer performed six activities:  Walking,Walking-Upstairs, Walking-Downstairs,Sitting,Standing,     
2.subject-->identifier of the volunteer performing an activity in each window sample ranging from 1 to 30.

3.type--> names of the features came from accelerometer and gyroscope.
    
    * This acceleration is then seperated into body and gravity acceleration signals.
      + BodyAcc 
      + GravityAcc
    
    * Subsequently the body linear acceleration  and angularvelocity were derived in time to obtain jerk signals.
        + BodyAccJerk 
        + GravityAccJerk
    
    * Also the magnitude
        + BodyAccMag
        + GravityAccMag
        + BodyAccJerkMag
        + BodyGyroMag
        + BodyGyroJerkMag

4.Domain--> time(t)   frequency(f)

5.Co-ordinates--> measurements  taken in 3-axial signals in X,Y,Z directions for each feature.
                No co-ordinates for some features measurements.Replace NA for that blank co-ordinates 
6.Statistics -->  The set of variables estimated from the time and frequency signals.Here mean and standard deviation.

7.Measurements--> indicates the values of features normalised and bounded in [-1,1]

**Output:**
   final is a sorted tidy data set  in a text format.Write.table is used to perform this.
