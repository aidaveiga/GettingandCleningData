# Code Book

This code book describes each variable in the dataset and its values.

## Identification

* `subject_ID` - the subject that carried out the experiment
* `activity_name` - the activity performed by the subject (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`)

## Measurements

The remaining columns contain the average of that variable for the given `subject` and `activity`. 

The table below shows the mapping from the variables in the original dataset to the variables in the tidy dataset produced by this script.

| Original Variable | Tidy Dataset Variable |
|-------------------|-----------------------|
| `tBodyAcc-mean()-X` | `tBody_Acceleration_Mean_X_m` |
| `tBodyAcc-mean()-Y` | `tBody_Acceleration_Mean_Y_m` |
| `tBodyAcc-mean()-Z` | `tBody_Acceleration_Mean_Z_m` |
| `tBodyAcc-std()-X` | `tbody_Acceleration_Std_X_m` |
| `tBodyAcc-std()-Y` | `tbody_Acceleration_Std_Y_m` |
| `tBodyAcc-std()-Z` | `tbody_Acceleration_Std_Z_m` |
| `tGravityAcc-mean()-X` | `tgravity_Acceleration_Mean_X_m` |
| `tGravityAcc-mean()-Y` | `tgravity_Acceleration_Mean_Y_m` |
| `tGravityAcc-mean()-Z` | `tgravity_Acceleration_Mean_Z_m` |
| `tGravityAcc-std()-X` | `tgravity_Acceleration_Std_X_m` |
| `tGravityAcc-std()-Y` | `tgravity_Acceleration_Std_Y_m` |
| `tGravityAcc-std()-Z` | `tgravity_Acceleration_Std_Z_m` |
| `tBodyAccJerk-mean()-X` | `tbody_Acceleration_Jerk_Mean_X_m` |
| `tBodyAccJerk-mean()-Y` | `tbody_Acceleration_Jerk_Mean_Y_m` |
| `tBodyAccJerk-mean()-Z` | `tbody_Acceleration_Jerk_Mean_Z_m` |
| `tBodyAccJerk-std()-X` | `tbody_Acceleration_Jerk_Std_X_m` |
| `tBodyAccJerk-std()-Y` | `tbody_Acceleration_Jerk_Std_Y_m` |
| `tBodyAccJerk-std()-Z` | `tbody_Acceleration_Jerk_Std_Z_m` |
| `tBodyGyro-mean()-X` | `tbody_Gyroscope_Mean_X_m` |
| `tBodyGyro-mean()-Y` | `tbody_Gyroscope_Mean_Y_m` |
| `tBodyGyro-mean()-Z` | `tbody_Gyroscope_Mean_Z_m` |
| `tBodyGyro-std()-X` | `tbody_Gyroscope_Std_X_m` |
| `tBodyGyro-std()-Y` | `tbody_Gyroscope_Std_Y_m` |
| `tBodyGyro-std()-Z` | `tbody_Gyroscope_Std_Z_m` |
| `tBodyGyroJerk-mean()-X` | `tbody_GyroscopeJerk_Mean_X_m` |
| `tBodyGyroJerk-mean()-Y` | `tbody_GyroscopeJerk_Mean_Y_m` |
| `tBodyGyroJerk-mean()-Z` | `tbody_GyroscopeJerk_Mean_Z_m` |
| `tBodyGyroJerk-std()-X` | `tbody_GyroscopeJerk_Std_X_m` |
| `tBodyGyroJerk-std()-Y` | `tbody_GyroscopeJerk_Std_X_m` |
| `tBodyGyroJerk-std()-Z` | `tbody_GyroscopeJerk_Std_X_m` |
| `tBodyAccMag-mean()` | `tbody_Acceleration_Mag_Mean_m` |
| `tBodyAccMag-std()` | `tbody_Acceleration_Mag_Std_m` |
| `tGravityAccMag-mean()` | `tgravity_Acc_Mag_Mean_m` |
| `tGravityAccMag-std()` | `tgravity_Acc_Mag_Std_m` |
| `tBodyAccJerkMag-mean()` | `tbody_Acc_Jerk_Mag_Mean_m` |
| `tBodyAccJerkMag-std()` | `tbody_Acc_Jerk_Mag_Std_m` |
| `tBodyGyroMag-mean()` | `tbody_Gyroscope_Mag_Mean_m` |
| `tBodyGyroMag-std()` | `tbody_Gyroscope_Mag_Std_m` |
| `tBodyGyroJerkMag-mean()` | `tbody_Gyroscope_Jerk_Mag_Mean_m` |
| `tBodyGyroJerkMag-std()` | `tbody_Gyroscope_Jerk_Mag_Std_m` |
| `fBodyAcc-mean()-X` | `fbody_Acc_Mean_X_m` |
| `fBodyAcc-mean()-Y` | `fbody_Acc_Mean_Y_m` |
| `fBodyAcc-mean()-Z` | `fbody_Acc_Mean_Z_m` |
| `fBodyAcc-std()-X` | `fbody_Acc_Std_X_m` |
| `fBodyAcc-std()-Y` | `fbody_Acc_Std_Y_m` |
| `fBodyAcc-std()-Z` | `fbody_Acc_Std_Z_m` |
| `fBodyAccJerk-mean()-X` | `fbody_Acc_Jerk_Mean_X_m` |
| `fBodyAccJerk-mean()-Y` | `fbody_Acc_Jerk_Mean_Y_m` |
| `fBodyAccJerk-mean()-Z` | `fbody_Acc_Jerk_Mean_Z_m` |
| `fBodyAccJerk-std()-X` | `fbody_Acc_Jerk_Std_X_m` |
| `fBodyAccJerk-std()-Y` | `fbody_Acc_Jerk_Std_Y_m` |
| `fBodyAccJerk-std()-Z` | `fbody_Acc_Jerk_Std_Z_m` |
| `fBodyGyro-mean()-X` | `fbody_Gyroscope_Mean_X_m` |
| `fBodyGyro-mean()-Y` | `fbody_Gyroscope__Mean_Y_m` |
| `fBodyGyro-mean()-Z` | `fbody_Gyroscope__Mean_Z_m` |
| `fBodyGyro-std()-X` | `fbody_Gyroscope__Std_X_m` |
| `fBodyGyro-std()-Y` | `fbody_Gyroscope__Std_Y_m` |
| `fBodyGyro-std()-Z` | `fbody_Gyroscope__Std_Z_m` |
| `fBodyAccMag-mean()` | `fbody_Acc_Mag_Mean_m` |
| `fBodyAccMag-std()` | `fbody_Acc_Mag_Std_m` |
| `fBodyBodyAccJerkMag-mean()` | `fbodybody_Acc_Jerk_Mag_Mean_m` |
| `fBodyBodyAccJerkMag-std()` | `fbodybody_Acc_Jerk_Mag_Std_m` |
| `fBodyBodyGyroMag-mean()` | `fbodybody_Gyroscope_Mag_Mean_m` |
| `fBodyBodyGyroMag-std()` | `fbodybody_Gyroscope_Mag_Std_m` |
| `fBodyBodyGyroJerkMag-mean()` | `fbodybody_Gyroscope_Jerk_Mag_Mean_m` |
| `fBodyBodyGyroJerkMag-std()` | `fbodybody_Gyroscope_Jerk_Mag_std_m` |