##Project for the Getting and Cleaning Data Course Project. John Hopkins' Data Science Specialization

##Read all data files into data sets.

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
#Add appropriate column headers.

#Remove each and every column that did not contain the strings "mean" or "std".
mean_sd <- sqldf(" select * from features where v2 like '%mean%' or v2 like '%std%' ")

##Save the tidy data set to a txt file.

test_train <- rbind(test_bind, train_bind)

write.table(test_train, file = "test_train.txt")	
