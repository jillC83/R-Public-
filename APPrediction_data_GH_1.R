#Jillian Cashman

# `APprediction.csv` data


# Read CSV
apdata <- read.csv("APprediction.csv", stringsAsFactors = TRUE)

# Ensure that ID variable is a factor, not a character
apdata$ID <- as.factor(apdata$ID)


#return first 10 rows of the data set. 

first_ten_rows <- head(apdata,10)

first_ten_rows

#return last 7 rows of the data set
last_seven_rows <- tail(apdata,7)

last_seven_rows


#Find the structure of the data set using ls.str() instead of str()

apdata_structure <- ls.str(apdata)

apdata_structure

#Find the dimensions of the data set \

apdata_dimensions <-dim(apdata)

apdata_dimensions

#Find the names of the columns 

col_names <- colnames(apdata)

col_names

#Find the summary of the data set 

apdata_summary <- summary(apdata)

apdata_summary

#Find the unique values of the town variable. 
unique_town <- unique(apdata$Town)

unique_town

#Wrap your code in as.factor()
unique_town_as_factor <- as.factor(unique(apdata$Town))

unique_town_as_factor

#Find proportion of students who live in each town. Round to 3 decimal places. 

town_proportion <- round(prop.table(table(apdata$Town)),3)

town_proportion

#Summarize the PrevMath variable in a table. 
PrevMath_summary <- summary(apdata$PrevMath)

PrevMath_summary

#Find the proportion of students who had the various previous math courses.
#Store the table of proportions in Q12. Round to three decimal places.

proportion_PrevMath <- round(prop.table(table(apdata$PrevMath)),3)

proportion_PrevMath
