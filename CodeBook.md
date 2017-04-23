# CodeBook of Run_analysis.R

## Code Variables

- actLabels = Activity labels
- featrures = All features of data set
- newfeatures = mean and standard deviation (target information)
- trainVal = Values of training
- trainAct = Training activities (WALKING, SITTING ...)
- trainSub = Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
- train.df <- Data frame having information about training values, activities and subjects
- testVal <- values of tests
- testAct <- Test activities
- testSub <- Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
- test.df <- Data frame having information about test values, activities and subjects
- finalDat <- Data set  has the mean and standard deviation
- finalDat.mean <- Data set with the average of each variable for each activity and each subject
