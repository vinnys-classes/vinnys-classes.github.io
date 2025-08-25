#lets make 2 pairs of graphs
#The first pair will have many data points
#The second pair will have fewer data points

#For each pair, the left graph will be randomly
#sampled. The right graph will be constrained in
#randomly sampling points


#lines 20-120 is for the first set of graphs
#lines 120 - 200ish is for the second set
#line 200-ish is where the graphs are fully built


################################
#####Many data points###########
################################

#1) To generate random data points unifmorly
#spread over a range we need the runif() command

#2) Using the command, we will make x and y coordiantes

#3) From there we generate our graph


#x-coordinates
x_big_random <- runif(n = 225, #I want 225 observations
                      min = 0, #0 the smallest possible
                      max = 1) #1 being the largest possible

head(x_big_random) #show me the first 6 entries of this 
                   #object, here a vector. Should just
                   #be numbers randomly scattered 0-1

#y-coordinates
y_big_random <- runif(n = 225, #I want 225 observations
                      min = 0, #0 the smallest possible
                      max = 1) #1 being the largest possible


#now we make the graph proper using the plot() function

plot(x = x_big_random, #x-coordinates
     y = y_big_random, #y-coordinates
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     pch = 16)         #pch = point character which
                       #defines the shape of the dots
                       #when plotted. Defaults to non-filled
                       #circles

#First one is done

###################################################

#Many points, not random graph up next
#225 = 15^2 so the plan is to break each 
#axis up into 15 parts, and sample from 
#within that.

#To do this we can....
#1) find the length of a given band (it's 1/15)
#2) Generate 15 data points between 0 and 1/15
#3) Add (1/15)*? to the 15 points to raise
#   them up to the correct range. This will 
#   work for one axis only. 
#4) For the second axis, will generate 225 data
#   points between 0 and 1/15 but then add 
#   (0/15, 1/15,...14/15, 0/15, 1/15,.....)

#x-axis first
holding <- NULL #tell R to make a variable but dont
                #put anything in it yet

for(i in 0:14){  #make a for loop that loops over 
                 #each of the 15 bands
  
  x <- runif(n = 15,    #same function as above
             min = 0,
             max = 1/15) #this time max is only 1/15
  
  x_lifted_up <- x + i/15 #step 3 above
  
  holding <- c(holding, x_lifted_up) #this function
  #says take the object "holding", and add everythign
  #from "x_lifted_up" to the tail end of that vector
}
x_big_no_rand <- holding

############################

#y-axis next
  y <- runif(n = 225,    #same function as earlier
             min = 0,
             max = 1/15) #this time max is only 1/15
  
  #All our observations are now 0-1/15 but I want
  #0-1/15, 1/15-2/15, 2/15-3/15, etc...

my_seq <- (0:14)/15
my_seq #0/15, 1/15, 2/15, etc.....

my_seq_long <- rep(my_seq, 15) #repeat the seqence
    #15 times in total

head(my_seq_long, n = 18) #show me the first 18 
      #entries of this vector. Not it starts over
      #at 0 in the 15 number

y_big_no_rand <- y + my_seq_long #and now we have
      #our y coordinate as well


plot(x_big_no_rand, 
     y_big_no_rand,
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     pch = 16) #and now we plot them


#########################################
#########################################
#########################################
#########################################
############Few points###################
#########################################





x_small_random <- runif(n = 16, #I want 16 observations
                      min = 0, #0 the smallest possible
                      max = 1) #1 being the largest possible

y_small_random <- runif(n = 16, 
                      min = 0, 
                      max = 1) 

plot(x_small_random,
     y_small_random, 
     pch = 16)


#Now the small, non-random set
holding <- NULL
for(i in 0:3){  
  x <- runif(n = 4,    #same function as above
             min = 0,
             max = 1/4) #this time max is only 1/4
  
  x_lifted_up <- x + i/4 #step 3 above
  
  holding <- c(holding, x_lifted_up) #this function
  #says take the object "holding", and add everythign
  #from "x_lifted_up" to the tail end of that vector
}
x_small_no_rand <- holding



#And the y-axis
y <- runif(n = 16,    #same function as earlier
           min = 0,
           max = 1/4) #this time max is only 1/15

#All our observations are now 0-1/15 but I want
#0-1/15, 1/15-2/15, 2/15-3/15, etc...

my_seq <- (0:3)/4
my_seq_long <- rep(my_seq, 4) #repeat the seqence
#15 times in total


y_small_no_rand <- y + my_seq_long #and now we have
#our y coordinate as well


plot(x_small_no_rand,
     y_small_no_rand,
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     pch = 16)


















#########################################
#########################################

#Now to make them presentable

par(mfrow = c(1,2)) #par command is for the 
#parameters of your graphics. mfrow is the 
#layout of the window panes (default is 1x1).
#The vector c(1,2) says I want 1 row with
#two columns of graphs.


plot(x = x_big_random, 
     y = y_big_random, 
     pch = 16,
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     xlab = 'my_x_axis', #give the two axis labels
     ylab = 'my_y_axis')        

plot(x_big_no_rand, 
     y_big_no_rand,
     pch = 16,
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     xlab = 'my_x_axis',
     ylab = 'my_y_axis')


plot(x = x_small_random, 
     y = y_small_random, 
     pch = 16,
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     xlab = 'my_x_axis', #give the two axis labels
     ylab = 'my_y_axis')        

plot(x_small_no_rand, 
     y_small_no_rand,
     pch = 16,
     xlim = c(0,1), #make the axis from 0-1
     ylim = c(0,1),
     xlab = 'my_x_axis',
     ylab = 'my_y_axis')

