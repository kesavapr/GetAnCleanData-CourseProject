#Code Book
##Code Book describing the Tidy dataset created as part of the Getting and Cleaning Data Course Project 

The variables that are part of this dataset were obtained by performing specific transformation on data  from an experient, carried out by Smartlab - Non Linear Complex Systems Laboratory, with a group of 30 volunteers performing a set of six activities wearing a smartphone on their waist by 

The Mean and Standard deviation that were estimated for variables derived from the signals obtained as part of the experiment (from the accelerometer and gyroscope) were averaged for each person and corresponding activity to create data for each column in the new tidy datset.

Each row repesents a unique Subject - Activity combination.


* SubjectId - Unique ID for each participant in the experiment
* Activity - Represent one of the following activities carried out by the participant
    1. Walking
    2. Walking Upstairs
    3. Walking downstairs
    4. Sitting
    5. Standing
    6. Laying
* Each of the following variable represents the average of the Means or  standard deviations for various measurements, by Participant and their specific activity, obtained from the original experiment 
    * Note: The following abbreviations are used in the variable names  
        +freq   - Frequency  
        +time   - Time  
        +acc    - Accelerometer  
        +gyro   - Gyroscope  

    * timebodyaccmeanx
    * timebodyaccmeany
    * timebodyaccmeanz
    * timegravityaccmeanx
    * timegravityaccmeany
    * timegravityaccmeanz
    * timebodyaccjerkmeanx
    * timebodyaccjerkmeany
    * timebodyaccjerkmeanz
    * timebodygyromeanx
    * timebodygyromeany
    * timebodygyromeanz
    * timebodygyrojerkmeanx
    * timebodygyrojerkmeany
    * timebodygyrojerkmeanz
    * timebodyaccmagmean
    * timegravityaccmagmean
    * timebodyaccjerkmagmean
    * timebodygyromagmean
    * timebodygyrojerkmagmean
    * freqbodyaccmeanx
    * freqbodyaccmeany
    * freqbodyaccmeanz
    * freqbodyaccmeanfreqx
    * freqbodyaccmeanfreqy
    * freqbodyaccmeanfreqz
    * freqbodyaccjerkmeanx
    * freqbodyaccjerkmeany
    * freqbodyaccjerkmeanz
    * freqbodyaccjerkmeanfreqx
    * freqbodyaccjerkmeanfreqy
    * freqbodyaccjerkmeanfreqz
    * freqbodygyromeanx
    * freqbodygyromeany
    * freqbodygyromeanz
    * freqbodygyromeanfreqx
    * freqbodygyromeanfreqy
    * freqbodygyromeanfreqz
    * freqbodyaccmagmean
    * freqbodyaccmagmeanfreq
    * freqbodyaccjerkmagmean
    * freqbodyaccjerkmagmeanfreq
    * freqbodygyromagmean
    * freqbodygyromagmeanfreq
    * freqbodygyrojerkmagmean
    * freqbodygyrojerkmagmeanfreq
    * angletbodyaccmeangravity
    * angletbodyaccjerkmeangravitymean
    * angletbodygyromeangravitymean
    * angletbodygyrojerkmeangravitymean
    * anglexgravitymean
    * angleygravitymean
    * anglezgravitymean
    * timebodyaccstdx
    * timebodyaccstdy
    * timebodyaccstdz
    * timegravityaccstdx
    * timegravityaccstdy
    * timegravityaccstdz
    * timebodyaccjerkstdx
    * timebodyaccjerkstdy
    * timebodyaccjerkstdz
    * timebodygyrostdx
    * timebodygyrostdy
    * timebodygyrostdz
    * timebodygyrojerkstdx
    * timebodygyrojerkstdy
    * timebodygyrojerkstdz
    * timebodyaccmagstd
    * timegravityaccmagstd
    * timebodyaccjerkmagstd
    * timebodygyromagstd
    * timebodygyrojerkmagstd
    * freqbodyaccstdx
    * freqbodyaccstdy
    * freqbodyaccstdz
    * freqbodyaccjerkstdx
    * freqbodyaccjerkstdy
    * freqbodyaccjerkstdz
    * freqbodygyrostdx
    * freqbodygyrostdy
    * freqbodygyrostdz
    * freqbodyaccmagstd
    * freqbodyaccjerkmagstd
    * freqbodygyromagstd
    * freqbodygyrojerkmagstd