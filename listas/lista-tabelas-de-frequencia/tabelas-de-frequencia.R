# Questão 1
data("iris")
iris$Species
table(iris$Species)
prop.table(table(iris$Species))
100* prop.table(table(iris$Species))

#Questão 2
 cut(iris$Sepal.Length, breaks = 5)
 table(cut(iris$Sepal.Length, breaks = 5))
 prop.table(table(cut(iris$Sepal.Length, breaks = 5)))
 cumsum( table(cut(iris$Sepal.Length, breaks = 5))
)
 #Questão 3
 
 data("mtcars")
 install.packages("dplyr")
 library(dplyr) 
 table(mtcars$cyl, mtcars$gear)
 prop.table(table(mtcars$cyl, mtcars$gear))
 prop.table(table(mtcars$cyl, mtcars$gear), margin = 1)
 prop.table(table(mtcars$cyl, mtcars$gear), margin = 2)