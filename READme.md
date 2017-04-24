# Class Project: "Getting and Cleaning Data" 

The aim of this project is read a data set from ["Human Activity Recognition Using Smartphones" data set], which is stored in (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The code, which ahs been written in R and is called "Run_analysis.R", performs an analysis on the data set and writes a tidy data set file. 

**Variables of run_analysis.R**

- `actLabels`  Activity labels
- `featrures`  All features of data set
- `newfeatures`  mean and standard deviation (target information)
- `trainVal`  Values of training
- `trainAct`  Training activities (WALKING, SITTING ...)
- `trainSub`  Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
- `train.df`  Data frame having information about training values, activities and subjects
- `testVal`  values of tests
- `testAct`  Test activities
- `testSub`  Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
- `test.df`  Data frame having information about test values, activities and subjects
- `finalDat`  Data set  has the mean and standard deviation
- `finalDat.mean` Data set with the average of each variable for each activity and each subject

**Steps of run_analysis.R**

1. Charging libraries.
2. Unziping the original data sets (UCI HAR Dataset).
The input dataset includes the following files:
      * `README.txt`
      * `features_info.txt`: Shows information about the variables used on the feature vector.
      * `features.txt`: List of all features.
      * `activity_labels.txt`: Links the class labels with their activity name.
      * `train/X_train.txt`: Training set.
      * `train/y_train.txt`: Training labels.
      * `test/X_test.txt`: Test set.
      * `test/y_test.txt`: Test labels.
3. Read the activities and features from inputs.
4. Extract information on mean and standard deviation.
5. Read data only having values of mean and standard deviation.
6. Merge datasets and add labels. 
7. Change activities and subjects to factors. Characters instead of numbers.
8. Calculate mean of each subject and each activity.
9. Write the output tidy data set.

**The output of the R code is a tidy data set, [tidydata.txt](tidydata.txt).**

You can read more about the data and the analysis in the [code book](CodeBook.md).
