data("ToothGrowth")
head(ToothGrowth)

Is there a difference betwen OJ and the other 
delivery method (VC)? To test this, run a linear model,
check your residuals, write your hypothesis statement,
p-value, and conclusion.

ggplot(data = ToothGrowth,
       aes(x = dose, 
           y = len)) + 
  geom_jitter(aes(color = supp,
                 shape = supp),
              width = .1)


modoj <- lm(len ~ dose + supp + I(dose^2),
            data = ToothGrowth)
ToothGrowth$resids <- resid(modoj)
ToothGrowth$pred <- predict(modoj)

ggplot(data = ToothGrowth,
       aes(x = pred, 
           y = resids)) + 
  geom_jitter(aes(color = supp,
                  shape = supp),
              width = .1)


summary(modoj)
