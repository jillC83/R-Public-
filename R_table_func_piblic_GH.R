
#using housing data
housing <- read_csv("housing.csv")

#explore data
head(housing)
summary(housing)

#obtain unique maintenance_score in desc order
unique_maintenace_scores <- sort(order(unique(housing["maintenance_score"])))

#table the var unique(home_data["maintenance_score"])
print('table unique maintenance_score')
table(unique(housing["maintenance_score"]))

#create frequency table the data in "maintenance_score" col
table(housing["maintenance_score"])

#create frequency table the data in "maintenance_score" col using $
table(housing$maintenance_score)

#create prop.table(table(df$position)) for maintenance scores 
prop.table(unique_maintenace_scores)

#summed proportion should equal 1
sum(prop.table(unique_maintenace_scores))


#remove scientific notation
options(scipen =999)

#calculate frequency table for position and points variable
#table(df$position, df$points)

table(housing$suburb, housing$size_class)


#calculate frequency table of proportions for position and points variable
#prop.table(table(df$position, df$points))

prop.table(table(housing$region_name, housing$size_class))




