## Con el data frame mtcars (viene cargado en R).
## 1. Previsualizar el contenido con la funcion head().

head(mtcars)

## 2. Mirar el numero 
## de las y columnas con nrow() y ncol().

nrow(mtcars)
ncol(mtcars)

## 3.Crear un nuevo data frame con los modelos de coche que
## consumen menos de 15 millas/galon.

dfmpg <- mtcars[mtcars$mpg < 15,]

## 4. Ordenar el data frame anterior por disp.

dfmpg[order(dfmpg$disp),]

## 5. Calcular la media de las marchas (gear) de los modelos del
## data frame anterior.

mean(dfmpg$gear)

## 6. Cambiar los nombres de las variables del data frame a
## var1, var2, ..., var11.
## Pista: Mirar la documentacion de la funcion paste y
## usarla para generar el vector (\var1", \var2", ..., \varN")
## donde N es el numero de variables del data frame.

names(mtcars) <- paste0("var", 1:ncol(mtcars1), sep = " ")
