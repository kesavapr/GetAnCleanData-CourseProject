library("dplyr")
library("tidyr")

## ---- Manupilate Columns Headings for clarity ----
features <- read.table("features.txt")
featureColNames <- make.names(features$V2, unique = TRUE)
featureColNames <- gsub("[[:punct:]]", "", featureColNames)
featureColNames <- gsub("BodyBody", "Body", featureColNames)
featureColNames <- gsub("^f", "Freq", featureColNames)
featureColNames <- gsub("^t", "Time", featureColNames)
featureColNames <- tolower(featureColNames)

## Read the Activity Label File
ActivityDesc <- read.table("activity_labels.txt")


## ----- Read and Merge training and test data sets ----
trainDataSubject <- read.table("train/subject_train.txt")
colnames(trainDataSubject) <- "SubjectId"

trainDataX <- read.table("train/X_train.txt")
colnames(trainDataX) <- featureColNames

trainDataY <- read.table("train/y_train.txt")
colnames(trainDataY) <- "Activity"

trainData <- cbind(trainDataSubject, trainDataY, trainDataX) %>% tbl_df()

testDataSubject <- read.table("test/subject_test.txt")
colnames(testDataSubject) <- "SubjectId"

testDataX <- read.table("test/X_test.txt")
colnames(testDataX) <- featureColNames

testDataY <- read.table("test/y_test.txt")
colnames(testDataY) <- "Activity"

testData <- cbind(testDataSubject, testDataY, testDataX)  %>% tbl_df()

FullDataSet <- bind_rows(trainData, testData)


FullDataMeanStd <- select(FullDataSet, SubjectId, Activity, 
                          contains("mean"), contains("std")) %>%
                    mutate(Activity = ActivityDesc$V2[Activity])

FullTidyDataMeanStdAvg <- group_by(FullDataMeanStd, SubjectId, Activity) %>%
    summarise_each(funs(mean)) %>%
    arrange(SubjectId)


write.table(FullTidyDataMeanStdAvg, "TidySmartphoneDataSet.txt", 
            row.names = FALSE)

View(read.table("TidySmartphoneDataSet.txt", header = TRUE))



