Description of the run_analytics.R process

1. load library 'plyr', 'dplyr' and 'data.table'
2. read feature list from 'features.txt' and activities from activities_labels
3. read train data from 'train/subject_train.txt' & 'train/y_train.txt' & 'train/x_train.txt'
4. read test data from 'test/subject_test.txt' & 'test/y_test.txt' & 'test/x_test.txt'
5. merge train & test datasets
6. rearrange the new data by id
7. extract only the 'mean' & 'std' into into data.filtered
8. calculate the mean
9. create tidy_data table