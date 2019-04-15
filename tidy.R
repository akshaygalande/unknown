install.packages("tidyverse")
library(ggplot2)
attach(diamonds)
View(diamonds)
df<-diamonds
x<-diamonds$cut
y<-diamonds$carat
ggplot(df,aes(x,y))
hist(diamonds$carat,main = "diamond package")
plot(x,y,main="diamond package")
boxplot(x,y,main="diamond package")
qplot(diamonds$carat,geom = "histogram")
geom_boxplot()
ggplot(df,aes(x,y))+
geom_boxplot(mapping = NULL, df, stat = "boxplot",position = "dodge2" notch = FALSE, notchwidth = 0.5, varwidth = FALSE, na.rm = FALSE, show.legend = NA, inherit.aes = TRUE)
p <- ggplot(ToothGrowth, aes(x=dose, y=len)) + 
  geom_boxplot()
p
