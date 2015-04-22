# create tidy data frame from smartphone measurements of human activity

#first get the activity key
activities <- read.table('activity_labels.txt', sep=' ', header=F)
activities


# now get the metrics measured
metrics <- read.table('features.txt', sep=' ', header=F)


# find the metrics containing std or means, filter out the non-mean/std values
idx <- which(grepl('mean', metrics[,2]) | grepl('std', metrics[,2]))

metrics <- metrics[idx,]


# load the test and training dataset, cut out columns not used here
train <- read.table('X_train.txt', sep='', header=F)
test <- read.table('X_test.txt', sep='', header=F)
train <- train[,idx]
test <- test[,idx]


colnames(test) <- metrics[,2]
colnames(train) <- metrics[,2]


#load the subjects and activities, and combine them with data
subject_test <- read.table('subject_test.txt', sep=' ', header=F)
subject_train <- read.table('subject_train.txt', sep=' ', header=F)
activities_test <- read.table('y_test.txt', sep=' ', header=F)
activities_train <- read.table('y_train.txt', sep=' ', header=F)

test <- cbind(subject_test, activities_test, test)
train <- cbind(subject_train, activities_train, train)


colnames(test)[1:2] <- c('subject', 'activity')
colnames(train)[1:2] <- c('subject', 'activity')


# now combine the whole dataset
combined_data <- rbind(train, test)


# now calculate the means for each, first group by subject and activity
# then calculate mean for each, subject/activity pair
combined_data[,82] = as.factor(paste(combined_data[,1], '-', combined_data[,2]))

mean_data <- sapply(3:81, function(x) tapply(combined_data[,x], 
                                             combined_data[,82], mean))

colnames(mean_data) <- colnames(combined_data)[3:81]


# now get the subject and activity for each row
subj_act <- t(as.data.frame(strsplit(rownames(mean_data), " - ")))
subj_act[,2] = as.character(sapply(subj_act[,2], function(x) 
      activities[activities==x, 2]))

# combine for tidy dataset
mean_data <- cbind(subj_act, mean_data)

rownames(mean_data) = 1:nrow(mean_data)
colnames(mean_data)[1:2] = c('subject', 'activity')

# write the tidy dataset
write.table(mean_data, 'tidy_dataset.txt', row.name=F)
