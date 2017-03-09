attach(iris)
head(iris)

ggplot(stack(diabetes2),aes(x=ind,y=values))+geom_boxplot()


by(iris$Sepal.Length,Species,mean)

tapply(iris$Sepal.Length,Species, mean)
