#Finding a data set to play with
data()

#And I decided on an experiment with the weight of chickens
#To load the data frame (which already exists in R) I have
#to use data() and list the name of the data set
data("ChickWeight")


par(mfrow = c(2,1)) #I want two graphs on the same plot, verticle

par(mar = c(3,3,2,2)) #Change the magins of the graph. It
#goes clockwise from the bottom margin of the graph

par(mgp = c(2,.5,0)) #How close the titles, axis labels,
#and axis lines are to the graph

#We will now subset the data using the
#subset function. First argument is the
#data we want to subset, the second is the
#variable we want to subset on and it's
#value. So Diet == 1 means only take rows
#were the diet was 1
d1 <- subset(ChickWeight, Diet == 1)
d2 <- subset(ChickWeight, Diet == 2)


#now we make a histogram for weight
hist(d1$weight,
     main = "",  #I want a blank title
     xlab = "Diet 1", #But the x-axis labeled
     breaks = 10, #with ten bins in my histogram
     ylim = c(0,60), #and I'll give the graph the limits
                     #for both y and x to keep them consisten
                     # between the graphs
     xlim = c(0,350))


#same but now we use the other data set
hist(d2$weight, main = "",
     xlab = "Diet 2",
     breaks = 11, 
     ylim = c(0,60),
     xlim = c(0,350))
