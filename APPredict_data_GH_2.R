#Jillian Cashman

#using  data `APprediction` 

# Read CSV
apdata <- read.csv("APprediction.csv", stringsAsFactors = TRUE)

#get familiar with data set
head(apdata,10)

summary(apdata)

# Ensure that ID variable is a factor, not a character
apdata$ID <- as.factor(apdata$ID)

#Find the mean weighted GPA of the students, remove na's

mean_wGPA <- mean(apdata$wGPA, na.rm = T)

mean_wGPA

#Find the median weighted GPA of the students, remove na's. 

median_wGPA <- median(apdata$wGPA, na.rm = T)

median_wGPA

#Find the minimum weighted GPA of the students, remove na's. 

min_wGPA <- min(apdata$wGPA, na.rm = T)

min_wGPA

#Find the maximum weighted GPA of the students, remove na's. 
max_wGPA <- max(apdata$wGPA, na.rm = T)

max_wGPA

#Find the range of the weighted GPA of the students, remove na's.

range_wGPA <- max(apdata$wGPA, na.rm = T) - min(apdata$wGPA, na.rm = T)

range_wGPA

#Find the variance of the weighted GPA of the students,remove na's .

variance_wGPA <- var(apdata$wGPA, na.rm = T)

variance_wGPA

#Find the standard deviation of the weighted GPA, remove na's.
stand_dev_wGPA <- sd(apdata$wGPA, na.rm = T)

stand_dev_wGPA

#the summary of only the weighted GPA data.

summary_wGPA <- summary(apdata$wGPA)

summary_wGPA

#weighted GPA of the student whose data is stored in the 150th row, use indexing

wGPA_150th_row <- apdata$wGPA[150]

wGPA_150th_row

#Convert the weighted GPA for the student in the 150th row into a z-score
#(standardized score).

z_score_150th_row <- (apdata$wGPA[150]-mean(apdata$wGPA, na.rm = T))/sd(apdata$wGPA, na.rm = T)

z_score_150th_row

#Find the 25th, 50th, and 75th percentiles (a.k.a. quartiles) of the
#weighted GPAs in this data set.

apdata_quartiles <- quantile(apdata$wGPA,probs = c(0.25, 0.5, 0.75), na.rm = T)

apdata_quartiles

