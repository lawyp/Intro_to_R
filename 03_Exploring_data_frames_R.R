#Exploring data frames

#Load in the data
cats<- read.csv(file='data/feline-data.csv')

#Add a col to an existing dataframe
age<- c(2, 3, 5)

#Bind the cats dataframe to the new age vector
cbind (cats, age)

#What if the new col was longer than the df?
age<- c(2, 3, 5, 9)
cbind (cats, age)

age<- c(2, 3, 5)
cats<- cbind (cats, age)

#Add a new row
newRow<- list('tortoishell', 3.3, TRUE, 9)
cats<- rbind(cats, newRow)

#Factors
levels (cats$coat)
#Add another factor
levels(cats$coat) <-c(levels (cats$coat), 'tortoishell')
rm(cats)
newRow<- list('tortoishell', 3.3, TRUE, 9)
cats<- rbind(cats, newRow)
cats <- read.csv(file = "data/feline-data.csv")
age<- c(2, 3, 5)
cbind (cats, age)
age<- c(2, 3, 5, 9)
cats<-cbind (cats, age)
newRow<- list('tortoishell', 3.3, TRUE, 9)
cats<- rbind(cats, newRow)
levels(cats$coat) <-c(levels (cats$coat), 'tortoishell')
newRow<- list('tortoishell', 3.3, TRUE, 9)
cats<- rbind(cats, newRow)

human.age<- (cats$age*7)

#Remove a row
cats

cats[-4,]

#The row to remove has an NA value
na.omit (cats)

#Fix rowname indexing
cats

cats
cats[-4,]
rownames(cats)<- NULL
cats
cats<-cats[-4,]
cats
rownames(cats)<- NULL
cats

df <- data.frame(first = c(Yanna),
                 last = c(Papadodim),
                 lucky_number = c(1),
                 stringsAsFactors = FALSE)


#Gapmider exercise
gapminder<-read.csv("data/gapminder-FiveYearData.csv")
str(gapminder)
typeof (gapminder$year)
typeof (gapminder$country)
str(gapminder$country)
typeof (gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)
head(gapminder)

tail(gapminder)
#6 rows by default

tail(gapminder, n=15)

#A sample
gapminder[sample(nrow(gapminder),5),]

#Challenge 4

