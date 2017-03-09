### Ejercicio ficheros, muestreos y graficos I

###-----------Ejercicio diamonds.csv

"Abrir el fichero diamonds.csv en un editor de texto (Excel,
WordPad, etc.) e identicar cual es el separador de las columnas y si tiene o no cabecera."

"Cargar el fichero diamonds.csv en R con read.table, poniendo especial atencion 
en los valores de los parametros opcionales que definen la separacion entre 
columnas y la cabecera."

diamonds <- as.data.frame(read.table('diamonds.csv',header = T, sep = ","))
?read.table()

colnames(diamonds)

"Ver cuantas las (diamantes) y columnas (variables) tiene
el conjunto de datos."

ncol(diamonds) # 11 Col
nrow(diamonds) # 53.940 Row

"Hacer un grafico de barras con la cantidad de diamantes
que hay para cada corte (variable cut)."

levels(diamonds$cut) #para conocer cuales son los factores en la tabla

plot(diamonds$cut)

"Escoger aleatoriamente 10000 diamantes y guardarlos en un nuevo data.frame 
(funcion sample)."

aleatorio <- sample(nrow(diamonds) , 10000, replace = F)

diamonds2 <- diamonds[aleatorio,]

ncol(diamonds2) # 11 col
nrow(diamonds2)  # 10.000 row

### Ejercicio ficheros, muestreos y graficos II

"La correlacion mide la fuerza de una relacion lineal entre dos variables. Toma valores 
entre 0 y +-1, donde 0 es poca dependencia y 1 maxima dependencia (el signo indica la
direccion). En R se calcula con la funcion cor. Sabiendo lo anterior y sobre la muestra
reducida de 10000 diamantes:"

"Extraer como vectores los valores de las variables precio y
quilate (price y carat)."

precio <- as.vector(diamonds2$price)

quilates <- as.vector(diamonds2$carat)

"Calcular la media y mediana del precio."

media_precio <- mean(precio)

mediana_precio <- median(precio)

"Hacer un histograma para visualizar la distribucion de los
precios."

hist(precio,probability = F)


"Calcular la correlacion de las variables anteriores."

cor(precio,quilates) # corr de 0.917, lo cual tiene una muy alta correlacion precio vs quilates



"Visualizar dicha correlacion haciendo un grafico de
dispersion del precio sobre los quilates."

plot(precio,quilates)











