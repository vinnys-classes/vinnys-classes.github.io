

holding <- NULL #tell R to make a blank object

for(i in 1:200000){ #for loop using 100,000 simulations
my_sample <- sample(c(1:4), 6, replace = TRUE)
#the above line randomly samples 1-4 five times

my_table <- table(my_sample) #collect the number of
#unique elements and how many times they appear

my_sum <- sum(my_table > 3) #How many of 1,2,3,4 appear more
#than three times?

has_triple <- my_sum > 0 #Does ANY of 1-4 appear more than
#three times?

holding <- c(holding, has_triple) #attach new result to 
          #to the blank vector. Each loop grows the vector
          #by one observation
} #end loop


my_result <- sum(holding)/200000 #count total 
#number of simulations that had at least three 
#replicates and divide by out sample size to
#get the estimated mean proportion.

my_result



#find the students proportions
yes / total

#if no students got it...
(1-my_result)^25
