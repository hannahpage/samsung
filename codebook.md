#Code Book
This code book will describe the data and steps followed in this project, to create the resulting tidy data set.

#Overview

Thirty participants performed 6 different activities while wearing an Samsung device. The wearable captured various data about their activity.

Explanation of the files included in the experiment, used for this analysis

features.txt: Names of the 561 features.

activity_labels.txt: Names and IDs for each of the 6 activities.

X_train.txt: First set of observations (7352) of the 561 features.

subject_train.txt: Vector of 7352 integers, corresponding to the IDs of the volunteers related to each of the observations in X_train.txt.

y_train.txt: Vector of 7352 integers, corresponding to the IDs and names of the activities related to each of the observations in X_train.txt.

X_test.txt: Second set of observations (2947) of the 561 features.

subject_test.txt: Vector of 2947 integers, corresponding to the IDs of the volunteers related to each of the observations in X_test.txt.

y_test.txt: Vector of 2947 integers, corresponding to the IDs and names of the activities related to each of the observations in X_test.txt.

##Processing steps

Read all data files into data sets.
Combine test and train data sets.
Remove columns that do not contain the strings "mean" or "std".
Reshape the left 86 columns together with the subject and the two activity columns into a single data set.
Create a tidy set with the average of each variable for each activity and each subject.
Save the tidy data set to a txt file.
