**Introduction:**
       This repo is all about my work on course project of getting and cleaning data.

**Raw Data:** 
      Here is the original data 
        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
         
**Script:**
     The runanalysis.r script  performs the following
* Merged the train  and test datasets .
* Labelled with descriptive activity names.
* Extracted only the mean and std for each measurement as asked.

**Tidy data:**
* by using the dplyr,tidyr and stringr packages the raw dataset is transformed into the tidy data set  tidy_data.
* And also created a second tidy data set with the average of each variable for each activity and each subject.
       final is the second tidy data set.

**Codebook**

* describes the variables and transformations made to get the these tidy data sets.
    
