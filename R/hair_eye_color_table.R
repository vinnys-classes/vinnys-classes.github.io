head(HairEyeColor)

#########################
#Strategy 1
aggregate(data = HairEyeColor, #give the data frame
          
          Freq ~ Hair, #I want the frequency (the values inside
                       #the table) to be summarized by the color
                       #of the students hair
          
          FUN = sum) #and I want to summary to be the sum the values


#########################
#To make the table "tidy"
library(reshape2) #might need to install this via install.packages()
new_data <- melt(HairEyeColor)
head(new_data)

#And *that* is why I love reshape2. It has two functions but
#it does them both really well and easily