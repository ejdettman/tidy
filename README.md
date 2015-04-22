# Readme for Human Activity Recognition by Smartphones Data Data Cleaning

This R script takes several txt files containing smartphone measurements to detect human activity.

This script extracts the subject ids, the activities performed, the mean and standard deviation measurements from each metric, adds descriptive columns for each. The average mean and average standard deviation are then calculated for each subject/activity pair. The integer values for each activity are also converted to descriptive strings. 

Ultimately, a data set containing 30 subjects with 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) is produced and contains mean values for 79 different metrics obtained using smartphone data from the below dataset.

Information about the experiments can be obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.


# Specific steps taken
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