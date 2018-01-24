#Creating graphics
#Yanna Pap
#24 January 2018

# To use ggplot2:
install.packages("ggplot2")

#To use it:
library("ggplot2")

gapdata <- read.csv(file= "data/gapminder-FiveYearData.csv")
ggplot(data= gapdata, aes(x= gdpPercap, y= lifeExp)) + geom_point()
ggplot(data= gapdata, aes (x= year, y= lifeExp)) + geom_point()
ggplot(data= gapdata, aes (x= year, y= lifeExp, color= continent)) + geom_point()

#Layers
ggplot(data= gapdata, aes (x= year, y= lifeExp, color= continent)) + geom_line()

ggplot(data= gapdata, aes (x= year, y= lifeExp, by= country, color= continent)) + geom_line()
ggplot(data= gapdata, aes (x= year, y= lifeExp, color= continent)) + geom_point() +geom_line()
ggplot(data= gapdata, aes (x= year, y= lifeExp, by= country, color= continent)) + geom_line(aes(color=continent))

#Challenge 4
ggplot(data= gapdata, aes (x= gdpPercap, y= lifeExp)) + geom_point(size= 2, color= "blue")
