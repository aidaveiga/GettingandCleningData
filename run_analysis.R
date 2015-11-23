run_analysis <- function(){
  
  ## read features, activity_labels data files
  features <- read.table("./features.txt", sep = " ", col.names = c("feature_ID", "feature_Name") )
  activity_labels <- read.table("./activity_labels.txt", sep = " ", col.names = c("activity_ID", "activity_Name"))
  
  activities_train <- read.table("./train/y_train.txt", sep = " ", col.names = "activity_ID")
  subjects_train <- read.table("./train/subject_train.txt", sep = " ", col.names= "subject_ID")
  subject_activities_train <- cbind(subjects_train, activities_train)
  
  ## read measurements data file
  measurements_train <- fread("./train/X_train.txt")
  subject_activities_train_dt <- as.data.table(subject_activities_train)
  training_set <- cbind(subject_activities_train_dt, measurements_train)
  
  activities_test <- read.table("./test/y_test.txt", sep = " ", col.names = "activity_ID")
  subjects_test <- read.table("./test/subject_test.txt", sep = " ", col.names= "subject_ID")
  subject_activities_test <- cbind(subjects_test, activities_test)
  measurements_test <- fread("./test/X_test.txt")
  subject_activities_test_dt <- as.data.table(subject_activities_test)
  test_set <- cbind(subject_activities_test_dt, measurements_test)
  
  ## merge both training and test data sets
  merged_set <- rbind(training_set, test_set)
  
  ## replace column names by names from features file
  for (i in 1:nrow(features)) {
    j <- i + 2
    new_column_name <- features[i,2]
    names(merged_set)[j] <- paste(new_column_name)
  }
  
  ## extract only mean and std
  extract_data <- select(merged_set, subject_ID, activity_ID, contains("mean"), contains("std"))
  
  ## Merging both extract_data and activity_labels to add the activity_Name column
  extract_data <- merge(extract_data, activity_labels, by = "activity_ID", all = TRUE)
  
  ## Set column reordering
  extract_data <- setcolorder(extract_data, c(2,1,89,3:88))
  
  ## calculate mean by subject_id and activity_id/name
  temp_extr <- extract_data[, tBody_Acceleration_Mean_X_m:=mean(`tBodyAcc-mean()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tBody_Acceleration_Mean_Y_m:=mean(`tBodyAcc-mean()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tBody_Acceleration_Mean_Z_m:=mean(`tBodyAcc-mean()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Std_X_m:=mean(`tBodyAcc-std()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Std_Y_m:=mean(`tBodyAcc-std()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Std_Z_m:=mean(`tBodyAcc-std()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acceleration_Mean_X_m:=mean(`tGravityAcc-mean()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acceleration_Mean_Y_m:=mean(`tGravityAcc-mean()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acceleration_Mean_Z_m:=mean(`tGravityAcc-mean()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acceleration_Std_X_m:=mean(`tGravityAcc-std()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acceleration_Std_Y_m:=mean(`tGravityAcc-std()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acceleration_Std_Z_m:=mean(`tGravityAcc-std()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Jerk_Mean_X_m:=mean(`tBodyAccJerk-mean()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Jerk_Mean_Y_m:=mean(`tBodyAccJerk-mean()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Jerk_Mean_Z_m:=mean(`tBodyAccJerk-mean()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Jerk_Std_X_m:=mean(`tBodyAccJerk-std()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Jerk_Std_Y_m:=mean(`tBodyAccJerk-std()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Jerk_Std_Z_m:=mean(`tBodyAccJerk-std()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Gyroscope_Mean_X_m:=mean(`tBodyGyro-mean()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Gyroscope_Mean_Y_m:=mean(`tBodyGyro-mean()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Gyroscope_Mean_Z_m:=mean(`tBodyGyro-mean()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Gyroscope_Std_X_m:=mean(`tBodyGyro-std()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Gyroscope_Std_Y_m:=mean(`tBodyGyro-std()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Gyroscope_Std_Z_m:=mean(`tBodyGyro-std()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_GyroscopeJerk_Mean_X_m:=mean(`tBodyGyroJerk-mean()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_GyroscopeJerk_Mean_Y_m:=mean(`tBodyGyroJerk-mean()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_GyroscopeJerk_Mean_Z_m:=mean(`tBodyGyroJerk-mean()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_GyroscopeJerk_Std_X_m:=mean(`tBodyGyroJerk-std()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_GyroscopeJerk_Std_X_m:=mean(`tBodyGyroJerk-std()-Y`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_GyroscopeJerk_Std_X_m:=mean(`tBodyGyroJerk-std()-Z`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Mag_Mean_m:=mean(`tBodyAccMag-mean()`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acceleration_Mag_Std_m:=mean(`tBodyAccMag-std()`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tgravity_Acc_Mag_Mean_m:=mean(`tGravityAccMag-mean()`), by=list(subject_ID, activity_ID)]
 ## temp_extr <- extract_data[, tgravity_Acc_Mag_Std_m:=mean(`tGravityAccMag-std()-X`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acc_Jerk_Mag_Mean_m:=mean(`tBodyAccJerkMag-mean()`), by=list(subject_ID, activity_ID)]
  temp_extr <- extract_data[, tbody_Acc_Jerk_Mag_Std_m:=mean(`tBodyAccJerkMag-std()`), by=list(subject_ID, activity_ID)]
  
 
  tidy_data <- select(temp_extr, c(1, 3, 90:120))
 
  }