library(ggplot2)
legos <- read.csv('https://vinnys-classes.github.io/data/legos_data.csv')
head(legos)

dev.off()
par(mfrow = c(1,1))

hist(legos$Pieces,
     main = 'Histogram for Lego\'s Pieces',
     xlab = 'Number of Pieces',
     ylab = 'Number of Lego Sets')

hist(legos$amazon_price,
     main = 'Histogram for Lego\'s Cost',
     xlab = 'Cost on Amazon',
     ylab = 'Number of Lego Sets')

plot(legos$Pieces,
     legos$amazon_price,
     pch = 16,
     xlab = "Number of Pieces",
     ylab = 'Amazon Cost',
     main = 'Pieces vs Cost of Lego Sets')


legos$Theme <- as.factor(legos$Theme)
plot(legos$Pieces,
     legos$amazon_price,
     pch = 16 + as.numeric(legos$Theme),
     xlab = "Number of Pieces",
     ylab = 'Amazon Cost',
     main = 'Pieces vs Cost of Lego Sets',
     col = legos$Theme)

library(ggplot2)


ggplot(legos, aes(y = Pieces,
                  group = Theme,
                  fill  = Theme,
                  x = Theme))  +
  geom_boxplot() +
  theme_bw()
