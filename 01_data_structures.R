#Author: Yanna
#Date: 10/01/2018
#Purpose: Script to create and analyse data frames

#Read the data file from disk
cats <- read.csv(file="data/feline-data.csv")

cats
#Address particular column with $
cats$weight
cats$coat

#Add 2 kgs to each weight
cats$weight+2

#Data  types
typeof (cats$weight)
typeof (cats$coat)

class(cats)

#Vectors
my_vector<-vector (length=3)
my_vector

my_vector <- vector (mode = "character", length=3)

#Make a vector
combine_vector <-c(2,4,8)

combine_vector <-c(2,4, "eight")

char_vector <- c("2","4","8")

num_vector<- (as.numeric) (char_vector)

x<-1:26
x<-1:26*2
names (x) <- LETTERS
names(x) <-LETTERS

#Factors and levels
coats <- c('tabby', 'tortoisehell', 'whatever', 'black', 'tabby')
coats

#structure
str(coats)

categories <- factor (coats)
class (categories)

str(categories)
typeof (categories) 
