### Data source

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

The purpose of the project is to get a tidy data set with the average of each variable for each activity and each subject.

### Description of the script

It is assumed that the Samsung data is in the working directory in "UCI HAR Dataset" folder.

*The block of comments at the beginning of the script (Preliminary steps) describes the processes of downloading and unzipping files. These steps can be reproduced if necessary.* 

The run_analysis.R script does the following:

- loads the dplyr and tidyr packages;

- renames "UCI HAR Dataset" folder to "Samsung" folder for convenient using; 

- reads data from "Samsung" directory:
  - the features labels from the "features.txt" file;
  - the training data from the "train/X_train.txt" file;
  - the training labels from the "train/X_train.txt" file;
  - the training subject data from the "train/subject_train.txt" file;
  - the test data from the "test/X_test.txt" file;
  - the test labels from the "test/X_test.txt" file;
  - the test subject data from the "test/subject_test.txt" file;

- the activity labels (class labels with their activity name) from the "activity_labels.txt" file;
	
- adds the variable names for train_data, test_data and activity_labels;

- adds subject and activity variables to training data;

- adds subject and activity variables to test data;

- merges the training data and the test data to create overall data set;

- joins activity labels to overall data set using the activity numbers;

- creates a data frame with the mean and standard deviation variables only;

- creates the tidy version of data frame;

- creates the data frame with the average of each variable for each activity and each subject;

- writes the final data frame to a file result.txt.
