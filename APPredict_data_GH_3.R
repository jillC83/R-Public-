#Jillian Cashman 

#'APprediction.csv' data 

# Read CSV
apdata <- read.csv("APprediction.csv", stringsAsFactors = TRUE)

# Ensure that ID variable is a factor, not a character
apdata_ID <- as.factor(apdata$ID)

#Investigate the data set. structure, column names and dimensions..
apdata_dimensions <- dim(apdata)

apdata_dimensions

# Provide a summary of the students' actual AP exam score
summary_actual <- summary(apdata$ACTUAL)

summary_actual

#Make a table of the students' actual AP exam scores .
table_actual <- table(apdata$ACTUAL) 

table_actual

#Provide a summary of the students' PSAT scores 
summary_psat <- summary(apdata$PSAT)

summary_psat

#How many students have missing PSAT scores? 
sum_missing_psat <- sum(is.na(apdata$PSAT))

sum_missing_psat

# Create a horizontal boxplot of the PSAT scores.label the x-axis with 
#the name of the variable of interst
psat_boxplot <- boxplot(apdata$PSAT, horizontal = TRUE,
                        main = "PSAT Frequency Histogram",
                        xlab = "PSAT Scores",
                        col = 'red')

psat_boxplot

#Create a histogram of the actual AP scores.label the x-axis with 
#the name of the variable of interest
actual_hist <- hist(apdata$ACTUAL, 
                    main = "Actual AP Scores Histogram",
                    xlab = "Acutual AP Scores",
                    col = 'blue')

actual_hist

#Create a histogram of the PSAT scores. label the x-axis with the name of the 
#variable of interest.
psat_hist <- hist(apdata$PSAT,
                  main = "PSAT Frequency Histogram",
                  xlab = "PSAT Scores",
                  col = 'yellow')

psat_hist

#find indices of the students who don't have a PSAT score recorded,they are NA's 
NA_PSAT_index <- which(is.na(apdata$PSAT))

NA_PSAT_index

#get the data frame of all the students who do not have a PSAT score recorded
#Use the `NA_PSAT_index` vector. View only the PSAT and ACTUAL columns and
NA_PSAT_students <- apdata[NA_PSAT_index,c("PSAT", "ACTUAL") ]


#Store the data frame of all the students who do have a PSAT score recorded.
#Use the `NA_PSAT_index` vector. View only the PSAT and ACTUAL columns and store
#the edited data frame as `apdata_PSATnoNA.`

apdata_PSATnoNA <- apdata[-NA_PSAT_index, c("PSAT", "ACTUAL") ]

apdata_PSATnoNA

#In the `apdata_PSATnoNA` dataframe, how many rows have zeros for the 
#actual AP exam score? Store the result in Q12.

zero_on_ap_exam <- sum(apdata_PSATnoNA$ACTUAL == 0)

zero_on_ap_exam

#Use the Boolean operator \>= to determine if an actual AP exam score is
#greater than or equal to 1 (avoiding all the zeros). Create a data frame with
#two columns (PSAT and ACTUAL) but only rows that have an ACTUAL score
#greater than or equal to 1. Name it `apdata_valid_apscores`.
actual_no_na <- apdata_PSATnoNA$ACTUAL >= 1

na_actual_clean <- apdata_PSATnoNA[actual_no_na,]

apdata_valid_apscores <- na_actual_clean[ c("PSAT", "ACTUAL")]

apdata_valid_apscores

#data frame you just created, use a Boolean operator to keep only rows with
#a PSAT score greater than 160. 
a <- apdata_valid_apscores$PSAT > 160

apdata_clean <- apdata_valid_apscores[a,]

apdata_clean

#Create a linear model predicting actual AP exam score based on the student's 
#PSAT score, using the `apdata_clean` dataset. rounded 

actual_psat_score_lm <- lm(ACTUAL ~ PSAT, data = apdata_clean)

round(coefficients(actual_psat_score_lm), 5)

#With the `apdata_clean` dataset, use the predict function to predict the 
#actual AP score for the student in the third row.
predict_3rd_row_actual_score <- predict(actual_psat_score_lm, apdata_clean[3,])

predict_3rd_row_actual_score

#Find the regression summary of the linear model predicting actual AP exam 
#score based on the student's PSAT score, using the `apdata_clean` dataset.
#Store the summary in Q17.

regr_summary_lm_actual_psat <- summary(lm(ACTUAL ~ PSAT, data = apdata_clean))
regr_summary_lm_actual_psat
### VIEW OUTPUT ###
# 6: gives the value of sigma (aka StDev of residuals)
# 8: gives the value of r-squared

regr_summary_lm_actual_psat[c(6,8)]


#Find the correlation between the actual AP exam score and a 
#student's PSAT score in the `apdata_clean` dataset.
corr_actual_psat <- cor(apdata_clean$ACTUAL, apdata_clean$PSAT)

corr_actual_psat

