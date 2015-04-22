Code book for smartphone data cleaning for course 'Getting and Cleaning Data'

variable descriptions
activities - this is a data frame that provides the key with descriptive strings for each activity along with the integer used 

metrics - this is a data frame that contains the column names for each variable measured

idx - this is a vector containing the indices of the columns containing the mean or standard deviation measurements

train - this is a data frame containing the measurements from the training data set

test - this is a data frame containing the measurements from the test data set

subject_test - this is a data frame containing the subject id values by row for the test data set

subject_train - this is a data frame containing the subject id values by row for the train data set

activities_test - this is a data frame containing the activity integer values by row for the test data set

activities_train - this is a data frame containing the activity integer values by row for the test data set

combined_data - this is a data frame that contains the train and test data along with subject id and activity id

mean_data - this is a data frame that contains the calculated means for each of the subject/id pairs for each of the metrics measured

subj_act - this is a matrix containing the subject id along with the descriptive title of each activity, rather than integer. It is used to combine with mean_data to add the subject and activity to two separate columns


# Summary of what was done
1. loaded in the activity key
2. loaded in the metrics measured (column descriptive names for data measurements)
3. identified the columns containing mean and standard deviation measurements, used to filter out columns not containing mean or standard deviations
4. loaded the datasets for testing and training sets, filtered out unnecessary columns, added column names
5. loaded the subject and activity identifiers for test and train set, these are the row id's for the measurement datasets
6. combined the subject and activity identifiers with the test and train set, added column names for those two added columns
7. combined the test and train datasets into one large data frame
8. next- combined the patient and activity rows into one factor to use as factor for calculating mean for each column
9. calculated the mean values for each column based on the subject/activity pair, rownames are the subject and activity integer separated by dash
10. added column names to calculated average values
11. created 2 new columns containing the subject id and the descriptive id for each row, added those column names
12. changed row names to integers
13. write the tidy data set to a csv file


