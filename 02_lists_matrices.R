#Lists and Matrices
#Lists: a list is a list of 'things'. This can have a mixture of data types

list_example<-list (1, 'a', TRUE, 'hello', 12.34, -12.45)
list_example

second_list<- list (title= 'Numbers', numbers= 1:10, data= TRUE)
second_list

#What 'type' is a list?
typeof(second_list)
typeof(second_list$title)
typeof(second_list$data)
typeof(second_list$numbers)

print(second_list$numbers)
print(second_list$numbers[3])

#Matrices
#A zero filled matrix- 6 columns, 3 rows
matrix_example<- matrix (0, ncol= 6, nrow=3)

matrix_example

class (matrix_example)
typeof(matrix_example)
#str=structure
str (matrix_example)
#dim= dimensions
dim (matrix_example)

nrow (matrix_example)
ncol (matrix_example)

length (matrix_example)

matrix_example2<- matrix (1:50, ncol= 5, nrow=10)
matrix_example2<- matrix (1:50, ncol= 5, nrow=10, byrow= TRUE)

#In R a matrix is a vector with additional dimensions
