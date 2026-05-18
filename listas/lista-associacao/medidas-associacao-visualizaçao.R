data("mtcars")
head(mtcars)
ncol(mtcars)
nrow(mtcars)
# 1. Quantas observações existem na base? Existem 32 observalões na base de dados.
# 2. Quantas variáveis existem? Existem 11 variáveis na base.
summary(mtcars$mpg)
summary(mtcars$hp)
summary(mtcars$wt)

cor(mtcars$mpg, mtcars$hp)
cor(mtcars$mpg, mtcars$wt)
cor(mtcars$mpg, mtcars$wt, method = "spearman")
cor(mtcars$mpg, mtcars$wt, method = "kendall")
cor(mtcars$mpg, mtcars$hp, method = "kendall")
cor(mtcars$mpg, mtcars$hp, method = "spearman")





# 1. As correlações são positivas ou negativas? As correlações são negativas
# 2. Qual associação parece mais forte? A associação entre as variáveis mpg e wt
# 3. O que significa uma correlação negativa nesse contexto? Significa que carros mais pesados tendem a apresentar menor eficiência de combustível(menor mpg).
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()+
  geom_smooth(method = "lm") +
  labs(
    title = "Peso do carro X Consumo de combustível",
    x = "Peso do carro",
    y = "Consumo de combustível"
  )

# 1. O gráfico confirma a correlação encontrada? Sim.
# 2. A relação parece linear? Sim.
# 3. Existem possíveis outliers? Sim.

data("Titanic")
titanic_df <- as.data.frame(Titanic)
head(titanic_df)
tabela <- xtabs(Freq ~ Sex + Survived, data = titanic_df)
install.packages("DescTools")
library(DescTools)
CramerV(tabela)
ggplot(titanic_df, aes(x = Sex, fill = Survived)) +
  geom_bar(position = "fill")
matriz_cor <- cor(iris[, 1:4])
matriz_cor

library(ggplot2)

ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point() +
  labs(
    title = "Dispersão das espécies de Iris",
    x = "Comprimento da Sépala",
    y = "Largura da Sépala"
  )