library(ggplot2) #load the package
data("Nile") #and load some data
class(Nile) #this is a weird class we don't want to get into

Nile <- as.vector(Nile) # so we change it to a more useful class
class(Nile)


#now we buld a data frame with two variables. The frist
#is the flow rate (stored in teh Nile data set) and the
#second is the year (which we have to add on ourselves)
Nile <- data.frame(flow = Nile, #as.vector because it's class i
                   year = 1871:1970) #tweak the data so
                                #year is easy to find


#We will add a third variable called changepoint that represents
#when the flow of the Nile changed for some reason
Nile$changepoint <- as.factor(c(rep(0, 28), rep(1, 72)))

head(Nile) #look at the first few lines


my_plot <- ggplot(data = Nile, #function is ggplot, data is Nile
             aes(x = year, #x-axis and y-axis define inside aes()
                 y = flow)) 

my_plot  #blank, why?

my_plot + 
  geom_line() #this line adds a geometry
              #a jagged line


my_plot + 
  geom_smooth() #this line adds a smoothed line

my_plot +
  geom_point() #or we can use points


my_plot + #basic plot
  geom_line(aes(color = changepoint,
                linetype = changepoint)) #and now we have color



my_plot + #basic plot
  geom_line(aes(color = changepoint,
                linetype = changepoint)) +
  theme(text = element_text(size = 14)) #make text bigger



ggplot(data = Nile, #function is ggplot, data is Nile
       aes(x = year, #x-axis and y-axis define inside aes()
           y = flow)) + 
                              
  geom_line(aes(color = changepoint, #make a graph of lines
                linetype = changepoint)) + #make the colors and line
                                          #type based on the change point
  
  theme(text = element_text(size = 14)) + #boost font size
  
  labs(title = "River Nile Flow Rate", #give main title
       color = "Break Point", #and give the legend for color and line 
       linetype = 'Break Point')  + #type a title as well
  
  xlab('Year') + #labels for x and y axis
  
  ylab("Flow")


