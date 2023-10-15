#Jillian Cashman

### Load Libraries
suppressPackageStartupMessages(library(airports))

#The dataframe is called *`usairports`* within the airports package. 
usairports

#View the data in only the first 4 rows of the usairports df.
head(usairports,4)

#dimensions of the usairports dataset 
airport_dimensions <- dim(usairports)

airport_dimensions

#Store the last 5 rows of the usairports df and view only columns 5, 6, & 7.
#Use indexing to access the requested columns. 
indexing_1 <- usairports[19611:19615,5:7]

indexing_1

#Store the names of the first six variables the df
indexing_2 <- colnames(usairports[1:6])

indexing_2

#Store the number of columns (i.e., the number of vars) in usairports 
num_of_vars_in_df <- ncol(usairports)

num_of_vars_in_df

# Use indexing to store the 3rd column name in usairports 
index_3 <- colnames(usairports[3])

index_3

#Store the values of the first 6 values of the `ownership` var in usairports
#dataframe to Q7. Useing $ operator to access the values.

indexing_4 <- usairports$ownership[1:6]

indexing_4


#Use the length function to store the number of rows in site_number variable 
#in the usairports data set. Store the value in Q8.
num_rows_site_number <- length(usairports$site_number)

num_rows_site_number

#Store the values of the ownership var in a table 
ownership_table <- table(usairports$ownership)

ownership_table

#Create a vector with these names:Matthew','Eldon','Jillian','Elizabeth'
names <- c('Matthew','Eldon','Jillian','Elizabeth') 

names

#Create a vector with these valuees: 30, 26, 14,33
age <- c(30, 26, 14,33)

age

#Create a vector with these values: 1091, 578, 1351, 679


salary <- c(1091, 578, 1351, 679)

salary

#Create a vector :'tax collector', 'electrician', 'physician', 'teacher'
careers <- c('tax collector', 'electrician', 'physician', 'teacher')

careers

#Create a dataframe with careers, num_vector_2, num_vector_1, names

new_df <- data.frame(careers, age, salary, names)

new_df

#Find the class of new_df
new_df_class <- class(new_df)

new_df_class

