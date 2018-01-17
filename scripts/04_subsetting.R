#Subsetting data

x<- c(5.4, 6.2, 7.0, 4.1, 8.3)
x
names(x) <- c('a', 'b', 'c', 'd', 'e')
x

#Refer to elements
x[1]
x[2]
x[c(1,4)]
X[1,4]
x[1:4]

#Skipping/ removing elements
x[-2]
x[c(-1, -3)]

#Using names
x["a"]
x[c("b","d")]

x[2:4]
x[c(2, 3, 4)]
