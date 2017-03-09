

diamonds <- as.data.frame(read.table('diamonds.csv',header = T, sep = ","))
head(diamonds)
aleatorio <- sample(1:nrow(diamonds),size = 100, replace = F)

diamondsV2 <- diamonds[aleatorio,]

carat <- diamondsV2$carat
price <- diamondsV2$price

model <- lm(carat~price)

abline(model)

?lm



ggplot(diamondsV2, aes(carat, price))  + geom_point(aes(color=color),size=3,alpha=0.5) + geom_smooth(method = 'lm', se = F) + labs(title = 'Regression Line')

qplot(carat,price, data = diamondsV2, geom = c('point','smooth'), method='lm',color=color )

?geom_smooth


