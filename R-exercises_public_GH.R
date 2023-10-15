
# Jillian Cashman


#Create a variable called Q1 containing the names of my family

family <- c("Jill", "Kevin", "Kaedon", "Cohen")

#View variable 
family


#Create a variable called `my_height` containing the value of 5.833. 
#Convert `mys_height` from feet to centimeters and
my_height_ft <- 5.5
my_height_cm <- my_height_ft*30.48

### VIEW OUTPUT ###
my_height_cm

#Create a variable called `my_fam_heights` 
#Get the 2nd element by indexing the `my_fam_heights` .

my_fam_heights <- c(5.5, 6, 5.8, 5.3)

index_2_height <- my_fam_heights[2]

#### VIEW OUTPUT ###

index_2_height

#Create a copy of my_fam_heights, called `updated_fam_heights`.
#Change the 3rd value to 2.2 and store 

updated_fam_heights <- my_fam_heights

updated_fam_heights[3] <- 2.2

### VIEW OUTPUT ###
updated_fam_heights

#C mean (i.e. average) updated_family_heights.

avg_fam_height <- mean(updated_fam_heights)

### VIEW OUTPUT ###
avg_fam_height

#Round avg_fam_height to one decimal place.

avg_fam_height <- round(avg_fam_height,1)

### VIEW OUTPUT ###
avg_fam_height

#Find the median of avg_fam_height.

median_fam_height <- median(updated_fam_heights)

### VIEW OUTPUT ###
median_fam_height

# Convert all the heights stored in updated_fam_heights (as feet) to centimeters
fam_height_cm <- 30.48*updated_fam_heights

### VIEW OUTPUT ###
fam_height_cm
