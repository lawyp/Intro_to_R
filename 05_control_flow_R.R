#Loops and IF statements in R
#IF statements are used to take different routes through a programme 
#depending on values of variables
x<-8
if (x>=10){
  print("x is greater than 10")
}else {print ("x is less than 10")}

# To check for multiple conditions, use else if clauses

x<-4
if (x>=10){print("x is greater than or equal 10")
}else if (x>5){print ("x is greater than 5, less than 10")
}else {print ("x is less than or equal to 5")}

gapminder[(gapminder$year ==2002),]
gapdata <- read.csv(file= "data/gapminder-FiveYearData.csv")

#Count the number of rows in the year column where year is 2002
rows2002count <- nrow(gapdata [(gapdata$year == 2002),])
if (nrow(gapdata [(gapdata$year == 2002),])>=1){
  print("there are records for 2002")
}else{
  print("Records for 2002 are not found")
}

#Loops
#FOR loops repeat a fixed  number of times
for (i in 1:10){
  print(i)
}

#Loops inside loops (aka nested loops)

for (i in 1:5){
  for (j in c("a", "b", "c", "d", "e")){
    print(paste(i,j))
    }
}

#WHILE loops repeat until some condtition is met
z<-1

while (z> 0.1){
  z<- runif(1)
  print (z)
}

#Challenge 2
vec1 <- c("a", "b", "c")
vec2 <- c("c", "b", "a")
vec3 <- c("d", "c", "b", "a")

#Are they the same (same means the same elements in the same order)
all(vec1 ==vec2)

#Check if one vector is contained in the other
all (vec1 %in% vec3)

#Challenge 3


#loop through gapminder by continent, print out whether life expectacy is < or > 50 ys

gapdata <- read.csv(file= "data/gapminder-FiveYearData.csv")
unique (gapdata$continent)
#How?
#1.Loop over the unique continent names
#2.For each continent create temp variable that holds  the life expectancy
#3. Prin the output

for (contname in unique(gapdata$continent)) {
  tmplifeexp <- mean(subset (gapdata, continent == contname)$lifeExp)
  cat("Average life expectancy for", contname, "is", tmplifeexp, "\n")
  rm (tmplifeexp)
}

