# GetAnCleanData-CourseProject
Repository for Getting And Cleaning Data Course Project


####The objective of this project is to create Tidy dataset from Raw dataset obtained from  

Human Activity Recognition Using Smartphones Dataset, Version 1.0  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.

##Usage instructions  
* Place the run_analysis.R file in the "UCICHAR Dataset" directory. The "UCICHAR Dataset" directory should contain the test and train directories as well as the activity_labels.txt and features.txt files    
* Open run_analysis in RStudio and run the file  
* The Tidy dataset created by this program will open in RStudio  
* The dataset will be on the same directory as the run_analysis script and will be named TidySmartphoneDataSet.tx  
* To view the file use the following code  
```
View(read.table("TidySmartphoneDataSet", header = TRUE))
```

##Script details
1. Read features.txt file and manipulate column names for clarity
    + Use `make.names` to create syntactically valid and unique names  
    + Remove punctuaions
    + Replace "BodyBody" with "Body"
    + Substitute f and t at at the start of the column names to freq and time
    + Convert to lowercase to make it easier to refer to column names in future analysis  
  
  
2. Read the activity_labels.txt file to obtain activity description information  

3. Read and Merge training and test datasets
    + Read subject_train, X_train and y_train files in to data tables. Set Column names for each data tables. Use `cbind` to merge columns.
    + Read subject_test, X_test and y_test files in to data tables. Set Column names for each data tables. Use `cbind` to merge columns.
    + Merge test and train data tables to form the full dataset table  
  
  
4. Select SubjectID, Activity, and rows containing 'mean' or 'std' in to a separate table

5. Replace Activity ids in Activity column with descriptive names obtained from the activity_labels.txt file

6. Group the table with subset of columns for mean and std variables by SubjectId and Activity

7. Summarize each of the time and frequency mean and std variables by each participant (subject) and their activity. Use 'arrange' to sort the data by SubjectId

8. Write the Tidy dataset from step 7 to a local text file "TidySmartphoneDataSet.txt"

9. Use `View` and `read.table` functions to read and display the contents of the "TidySmartphoneDataSet.txt" file
