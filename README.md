# Readme for Human Activity Recognition by Smartphones Data Data Cleaning

This R script takes several txt files containing smartphone measurements to detect human activity.

This script extracts the subject ids, the activities performed, the mean and standard deviation measurements from each metric, adds descriptive columns for each. The average mean and average standard deviation are then calculated for each subject/activity pair. The integer values for each activity are also converted to descriptive strings. 

Ultimately, a data set containing 30 subjects with 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) is produced and contains mean values for 79 different metrics obtained using smartphone data from the below dataset.

Information about the experiments can be obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Reference:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.