
## Ejercicio tidyr

# Cargar el paquete tidyr.
# Leer el conjunto de datos weather.txt. Cuidado con los
# missing values, estan codicados como \-" (ver parametro na.strings de read.table).
# Identificar cuales son las variables en los datos.

weather <- as.data.frame(read.table('weather.txt',sep = "\t", header = T, na.strings = '-'))
?read.table()
head(weather)


# Agrupar las variables d1{d31 en dos variables dia y temperatura (funcion gather)

?gather()
diaTempe <- gather(weather, dia, temperatura, d1:d31)
head(diaTempe)


# Convertir las columnas element y temperatura en dos
# variables TMAX y TMIN (funcion spread, es la operacion contraria a gather).

colnames(diaTempe)

diaTempe2 <- spread(diaTempe, element, temperatura)
head(diaTempe2)


# Separar la columna id en dos variables, pais e id.

?separate
diaTempe3 <- separate(diaTempe2, id, c('pais','id'), sep = 2)
head(diaTempe3)
