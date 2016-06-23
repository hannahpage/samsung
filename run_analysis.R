##getting and cleaning data project
getwd()
setwd("C:/R/test")
setwd("C:/R")
library(sqldf)
require(dplyr)
require(sqldf)
library(ggplot2)

#course project tasks
#1Merges the training and the test sets to create one data set.
#2Extracts only the measurements on the mean and standard deviation for each measurement.
#3Uses descriptive activity names to name the activities in the data set
#4Appropriately labels the data set with descriptive variable names.
#5From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#1 read data
test = read.table("X_test.txt")
ytest = read.table("y_test.txt")
subject_test = read.table("subject_test.txt")
body_acc_x_test = read.table("body_acc_x_test.txt")
body_acc_y_test = read.table("body_acc_y_test.txt")
body_acc_z_test = read.table("body_acc_z_test.txt")
body_gyro_x_test = read.table("body_gyro_x_test.txt")
body_gyro_y_test = read.table("body_gyro_y_test.txt")
body_gyro_z_test = read.table("body_gyro_z_test.txt")
total_acc_x_test = read.table("total_acc_x_test.txt")
total_acc_y_test = read.table("total_acc_y_test.txt")
total_acc_z_test = read.table("total_acc_z_test.txt")

train = read.table("X_train.txt")
ytrain = read.table("y_train.txt")
subject_train = read.table("subject_train.txt")
body_acc_x_train = read.table("body_acc_x_train.txt")
body_acc_y_train = read.table("body_acc_y_train.txt")
body_acc_z_train = read.table("body_acc_z_train.txt")
body_gyro_x_train = read.table("body_gyro_x_train.txt")
body_gyro_y_train = read.table("body_gyro_y_train.txt")
body_gyro_z_train = read.table("body_gyro_z_train.txt")
total_acc_x_train = read.table("total_acc_x_train.txt")
total_acc_y_train = read.table("total_acc_y_train.txt")
total_acc_z_train = read.table("total_acc_z_train.txt")

features = read.table("features.txt")
#1Merges the training and the test sets to create one data set.
##############TEST
##combine test datasets


subject_test <- rename(subject_test, id = V1 )	
ytest <- rename(ytest, label = V1 )	
test_bind <- cbind(subject_test,ytest, test, body_acc_x_test, body_acc_y_test, body_acc_z_test,
                   body_gyro_x_test, body_gyro_y_test, body_gyro_z_test, 
                   total_acc_x_test, total_acc_y_test, total_acc_z_test)	


##combine train datasets
subject_train <- rename(subject_train, id = V1 )	
ytrain <- rename(ytrain, label = V1 )	
train_bind <- cbind(subject_train,ytrain, train, body_acc_x_train, body_acc_y_train, body_acc_z_train,
                   body_gyro_x_train, body_gyro_y_train, body_gyro_z_train, 
                   total_acc_x_train, total_acc_y_train, total_acc_z_train)	


test_train <- rbind(test_bind, train_bind)

write.table(test_train, file = "test_train.txt")	



