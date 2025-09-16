#Battle plan: 
#1) randomly generate two data sets
#  a. one normal
#  b. one gamma (skewed)
#2) Tweak plot settings some to show boht graphs
#3) Make histograms of both


######################################
#first we make fake data
#100 random normal obs.
my_norm <- rnorm(100) 

#100 random gamma obs.
my_gamma <- rgamma(100, 2, 4)

################################
#tweak the parameter settings
par(mfrow = c(2,1), #in a single window pane I want two plots,
                    #two rows, one col 
    
    mar = c(3,2.5,2.5,1)) #make the margins on the outside
                          #of the graph smaller

#hist() is the function for a histogram
#and a small useful title
hist(my_norm, main = 'Normal')
hist(my_gamma, main = 'Gamma')
