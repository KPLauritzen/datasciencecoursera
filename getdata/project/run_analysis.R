library("dplyr")

features <- read.table("features.txt")
# remove the "()" part of the string
features <- sub("\\(\\)", "", features$V2)
# make everything lowercase for easy filtering
features <- tolower(features)

# Descriptive activity labels
activities <- read.table("activity_labels.txt")
activities <- activities$V2

# Use features as the descriptive column names
test <- read.table("test/X_test.txt", col.names=features)
# filter out everthing except means and standard deviations
test <- select(test, matches("(mean|std)"))
# Add the activity as a factor
test_activities <- read.table("test/y_test.txt")
test_activities <- factor(test_activities$V1, labels=activities)
test$activity <- test_activities
# Add the subject doing the activity
test_subjects <- read.table("test/subject_test.txt")
test$subject <- test_subjects$V1

# Same procedure as above
train <- read.table("train/X_train.txt", col.names=features)
train <- select(train, matches("(mean|std)"))
train_activities <- read.table("train/y_train.txt")
train_activities <- factor(train_activities$V1, labels=activities)
train$activity <- train_activities
train_subjects <- read.table("train/subject_train.txt")
train$subject <- train_subjects$V1

# concatenate train and test by rows
merged <- rbind(train, test)

grouped <- group_by(merged, subject, activity)
# make the tidy data set. output the mean of each variable for all
# combinations of subjects and activities
tidy <- grouped %>% summarise_each(funs(mean)) %>% arrange(subject, activity)

# output in the required format
write.table(tidy, "tidy.txt", row.name=FALSE)

