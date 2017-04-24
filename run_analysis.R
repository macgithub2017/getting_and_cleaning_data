# Charging libraries

library(reshape2)

# Original data files compressed

filename <- "getdata_dataset.zip"

# Download and unzip the dataset:

if (!file.exists("UCI HAR Dataset")) { 
      unzip(filename) 
}

# Read activity labels + features.

actLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
actLabels[,2] <- as.character(actLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extract information on mean and standard deviation

newfeatures <- grep(".*mean.*|.*std.*", features[,2])
newfeatures.names <- features[newfeatures,2]
newfeatures.names = gsub('-mean', 'Mean', newfeatures.names)
newfeatures.names = gsub('-std', 'Std', newfeatures.names)
newfeatures.names <- gsub('[-()]', '', newfeatures.names)

# Read data only having values of mean and standard deviation 

trainVal <- read.table("UCI HAR Dataset/train/X_train.txt")[newfeatures]
trainAct <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.df <- cbind(trainSub, trainAct, trainVal)

testVal <- read.table("UCI HAR Dataset/test/X_test.txt")[newfeatures]
testAct <- read.table("UCI HAR Dataset/test/y_test.txt")
testSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
test.df <- cbind(testSub, testAct, testVal)

# Merge datasets and add labels

finalDat <- rbind(train.df, test.df)
colnames(finalDat) <- c("subject", "activity", newfeatures.names)

# Change activities and subjects to factors. Characters instead of numbers

finalDat$activity <- factor(finalDat$activity, levels = actLabels[,1], labels = actLabels[,2])
finalDat$subject <- as.factor(finalDat$subject)

# Calculate mean of each subject and each activity 

finalDat.melted <- melt(finalDat, id = c("subject", "activity"))
finalDat.mean <- dcast(finalDat.melted, subject + activity ~ variable, mean)

# Write the output tidy data set

write.table(finalDat.mean, "tidydata.txt", row.names = FALSE, quote = FALSE)