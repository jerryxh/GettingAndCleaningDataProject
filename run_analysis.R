# 1. Merge the training and the test sets to create one data set

#   Features
x_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
x_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
x <- rbind(x_train, x_test)

#   Remove x_train and x_test
rm(x_train)
rm(x_test)

#   Activities
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
y <- rbind(y_train, y_test)

#   Remove y_train and y_test
rm(y_train)
rm(y_test)

#   Subjects
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subject <- rbind(subject_train, subject_test)

#   Remove subject_train and subject_test
rm(subject_train)
rm(subject_test)

#   Add names
features <- read.table('./UCI HAR Dataset/features.txt')
names(x) <- features$V2
names(y) <- c('Activity')
names(subject) <- c('Subject')

#   Final data set with all of the data merged together
merge <- cbind(subject, y)
data <- cbind(x, merge)

# 2. Extract only the measurements on the mean and standard deviation 
# for each measurement
subfeatures <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
names <- c(as.character(subfeatures), 'Subject', 'Activity' )
data <- subset(data, select=names)

# 3. Use descriptive activity names to name the activities in the data set
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
data$Activity <- factor(data$Activity, levels=activity_labels$V1, labels=activity_labels$V2)

# 4. Appropriately label the data set with descriptive variable names
names(data) <- gsub('^t', 'Time', names(data))
names(data) <- gsub('^f', 'Frequency', names(data))
names(data) <- gsub('Acc', 'Accelerometer', names(data))

# 5. Create a second, independent tidy data set with the average of each 
# variable for each activity and each subject.

#   Aggregate the data by Subject and Activity
data2 <- aggregate(. ~ Subject + Activity, data=data, FUN=mean)
data2 <-data2[order(data2$Subject, data2$Activity),]

#   Save the tidy data set to a file
write.table(data2, file = 'tidydataset.txt', row.name=FALSE)