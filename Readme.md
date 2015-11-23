Description of the run_analytics.R process

1. load library 'plyr', 'dplyr' and 'data.table'
2. read feature list from 'features.txt' and activities from activities_labels
3. read train data from 'train/subject_train.txt' & 'train/y_train.txt' & 'train/x_train.txt'
4. read test data from 'test/subject_test.txt' & 'test/y_test.txt' & 'test/x_test.txt'
5. merge train & test datasets
6. replace column names by names from features file
7. extract only the 'mean' & 'std' 
8. calculate the mean by subject_id and activity_name
9. create tidy_data data table
10. save the tidy_data in a file named tidy_data.txt