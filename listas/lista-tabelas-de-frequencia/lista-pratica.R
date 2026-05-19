library(ggplot2)
data(mtcars)
head(mtcars)
summary(mtcars)

table(cut(mtcars$mpg, breaks = 5))
table(cut(mtcars$drat, breaks = 5))
table(cut(mtcars$disp, breaks = 5))









table(mtcars$gear, mtcars$cyl)

install.packages("ggplot2")
library(ggplot2)



ggplot(mtcars,
       aes(x = factor(cyl))) +
         geom_bar()
       
ggplot(mtcars,
      aes(x = factor(gear))) +
         geom_bar()

ggplot(mtcars,
       aes(x = mpg)) +
  geom_histogram()
  

