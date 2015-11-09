# This script can be run as long as the Samsung data is in the working directory

library("dplyr")
library("tidyr")

## rename the directory for convenient using
file.rename("UCI HAR Dataset", "Samsung")

# read data
features <- read.table("Samsung/features.txt")

train_data <- read.table("Samsung/train/X_train.txt", header = FALSE, sep = "")
y_train <- read.table("Samsung/train/y_train.txt")
subject_train <- read.table("Samsung/train/subject_train.txt")

test_data <- read.table("Samsung/test/X_test.txt", header = FALSE, sep = "")
y_test <- read.table("Samsung/test/y_test.txt")
subject_test <- read.table("Samsung/test/subject_test.txt")

activity_labels <- read.table("Samsung/activity_labels.txt")

# add variables names for train_data, test_data and activity_labels
colnames(train_data) = colnames(test_data) <- features[, 2]
colnames(activity_labels) <- c("act_number","activity")

# add subject and activity variables to train data
subject_train <- tbl_df(subject_train)
names(subject_train)[1] <- c("subject_number")

activity_train <- tbl_df(y_train)
names(activity_train)[1] <- c("act_number")

train_data <- cbind(train_data, subject_train, activity_train)

# add subject and activity variables to test data
activity_test <- tbl_df(y_test)
names(activity_test)[1] <- c("act_number")

subject_test <- tbl_df(subject_test)
names(subject_test)[1] <- c("subject_number")

test_data <- cbind(test_data, subject_test, activity_test)

# merge the train_data and the test_data to create one data set
overall_data <- rbind(train_data, test_data)

# join activity labels to overall data set
overall_data <- full_join(overall_data, activity_labels, by = "act_number")

# extract only columns with the measurements on the mean and standard deviation
data_need <- overall_data[,grep("(mean|std)\\(\\)",colnames(overall_data))]
data_need <- cbind(data_need, overall_data[,562:564])

# create tidy version of data_need
tidy_data <- gather(data_need, feature, value, 1:66)

# creates the tidy data set with the average of each variable for each activity 
# and each subject
result <- tidy_data[, -2] %>%  # we don't need act_number  
          group_by(subject_number, activity, feature) %>% 
          summarize(average_value = mean(value))

write.table(result, "result.txt", row.name = FALSE)