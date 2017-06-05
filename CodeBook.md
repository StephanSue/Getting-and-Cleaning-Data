## Instruction

The submitted skript in the file run_analysis.R performes the following steps: 

1. Load the required package and download the data from the website
2. Load activity lables and features from the provided files in the sub folders and defines the relevant measures 
3. Load the relevant measures from the train and the test data set and combines it with the activities and subjects
4. Joins the two datasets 
5. convert activity and subject data into factors 
6. Write a tidy data set called 'tidy'

### The tidy dataset contains the following data
#### Identifiers
subject - The ID of the test subject</br>
activity - The type of activity performed when the corresponding measurements were taken

#### Measures
tBodyAccMeanX</br>
tBodyAccMeanY</br>
tBodyAccMeanZ</br>
tBodyAccStdX</br>
tBodyAccStdY</br>
tBodyAccStdZ</br>
tGravityAccMeanX</br>
tGravityAccMeanY</br>
tGravityAccMeanZ</br>
tGravityAccStdX</br>
tGravityAccStdY</br>
tGravityAccStdZ</br>
tBodyAccJerkMeanX</br>
tBodyAccJerkMeanY</br>
tBodyAccJerkMeanZ</br>
tBodyAccJerkStdX</br>
tBodyAccJerkStdY</br>
tBodyAccJerkStdZ</br>
tBodyGyroMeanX</br>
tBodyGyroMeanY</br>
tBodyGyroMeanZ</br>
tBodyGyroStdX</br>
tBodyGyroStdY</br>
tBodyGyroStdZ</br>
tBodyGyroJerkMeanX</br>
tBodyGyroJerkMeanY</br>
tBodyGyroJerkMeanZ</br>
tBodyGyroJerkStdX</br>
tBodyGyroJerkStdY</br>
tBodyGyroJerkStdZ</br>
tBodyAccMagMean</br>
tBodyAccMagStd</br>
tGravityAccMagMean</br>
tGravityAccMagStd</br>
tBodyAccJerkMagMean</br>
tBodyAccJerkMagStd</br>
tBodyGyroMagMean</br>
tBodyGyroMagStd</br>
tBodyGyroJerkMagMean</br>
tBodyGyroJerkMagStd</br>
fBodyAccMeanX</br>
fBodyAccMeanY</br>
fBodyAccMeanZ</br>
fBodyAccStdX</br>
fBodyAccStdY</br>
fBodyAccStdZ</br>
fBodyAccMeanFreqX</br>
fBodyAccMeanFreqY</br>
fBodyAccMeanFreqZ</br>
fBodyAccJerkMeanX</br>
fBodyAccJerkMeanY</br>
fBodyAccJerkMeanZ</br>
fBodyAccJerkStdX</br>
fBodyAccJerkStdY</br>
fBodyAccJerkStdZ</br>
fBodyAccJerkMeanFreqX</br>
fBodyAccJerkMeanFreqY</br>
fBodyAccJerkMeanFreqZ</br>
fBodyGyroMeanX</br>
fBodyGyroMeanY</br>
fBodyGyroMeanZ</br>
fBodyGyroStdX</br>
fBodyGyroStdY</br>
fBodyGyroStdZ</br>
fBodyGyroMeanFreqX</br>
fBodyGyroMeanFreqY</br>
fBodyGyroMeanFreqZ</br>
fBodyAccMagMean</br>
fBodyAccMagStd</br>
fBodyAccMagMeanFreq</br>
fBodyBodyAccJerkMagMean</br>
fBodyBodyAccJerkMagStd</br>
fBodyBodyAccJerkMagMeanFreq</br>
fBodyBodyGyroMagMean</br>
fBodyBodyGyroMagStd</br>
fBodyBodyGyroMagMeanFreq</br>
fBodyBodyGyroJerkMagMean</br>
fBodyBodyGyroJerkMagStd</br>
fBodyBodyGyroJerkMagMeanFreq</br>

#### Activity Labels
WALKING (value 1): subject was walking during the test</br>
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test</br>
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test</br>
SITTING (value 4): subject was sitting during the test</br>
STANDING (value 5): subject was standing during the test</br>
LAYING (value 6): subject was laying down during the test</br>
