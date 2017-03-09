

##Ejercicio dplyr


diamonds <- as.data.frame(read.table('diamonds.csv',sep = ',',header = T)) 
head(diamonds)

?filter()

corteideal <- filter(diamonds, cut == 'Ideal')
head(corteideal)

?select()

diamondsSelect <- select(diamonds, carat,  cut, color, price, clarity)
head(diamondsSelect)

?mutate() #Create a new column giving values
diamondsSelect <- mutate(diamondsSelect, priceByCarat = price/carat)
head(diamondsSelect)

?group_by #Grouping by...
byColor <- group_by(diamondsSelect, color)
head(byColor)


?summarise
byColorCount <- summarise(byColor, count = n()) #Cuenta el numero de Colores que hay.
byColorCount

byColorMedia <- summarise(byColor, media = mean(priceByCarat)) #Calcula la Media de del color por media de precios/quilates
byColorMedia

?arrange
diamondsSelectSorted <- arrange(diamondsSelect,desc(priceByCarat)) #Ordena de manera descendente
head(diamondsSelectSorted)
4