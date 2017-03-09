## 1. crear la matriz 4x5

A <- matrix(1:20,nrow = 4, ncol = 5, byrow = T)

## 2. Extrae los elementos A[4; 3];A[3; 4];A[2; 5] 
## utilizando una matriz de indices.
## 3. Reemplazar dichos elementos con 0

matr1 <- matrix(c(4, 3, 3, 4, 2, 5), 3, 2, byrow = T)

A[matr1] <- 0

## 4. Crear la matriz identidad 5X5,

I = diag(x = 1, nrow = 5, ncol = 5)
I
## 5. Convertir la matriz A anterior en una matriz cuadrada B
## añadiendo al final una fila de unos (funcion rbind()):

B <- rbind(A,1)
B

## 6. Calcular la inversa de la matriz B con la funcion solve().

solve(B)

## 7. Multiplicar B por su inversa B????1.
B * solve(B)

## 8. Comprobar si el resultado es exactamente la matriz
## identidad I.

#R/ No, el resultado no es el mismo

## 9. En caso contrario, calcular el \error" o \precision" de la
## operacion, definido como:

Error = (1/length(B))*(sum(B*solve(B)-I))
Error

## Con el data frame iris (viene cargado en R).
## 1. >Como esta estructurado el data frame? (utilizar las 
## funciones str() y dim()).

iris
str(iris)
dim(iris)

## 2. >De que tipo es cada una de las variables del data frame?.

class(iris$Sepal.Length)
class(iris$Sepal.Width)
class(iris$Petal.Length)
class(iris$Petal.Width)
class(iris$Species)


## 3. Utilizar la funcion summary() para obtener un resumen de
## los estadsticos de las variables.

summary(iris)

## 4. Comprobar con las funciones mean(), range(), que se
## obtienen los mismos valores.

?mean
mean(iris$Sepal.Length)
mean(iris$Sepal.Width)
mean(iris$Petal.Length)
mean(iris$Petal.Width)
mean(iris$Species) # La media de un Factor retorna Error

?range
range(iris$Sepal.Length)
range(iris$Sepal.Width)
range(iris$Petal.Length)
range(iris$Petal.Width)
range(iris$Species) # El rango de un Factor retorna Error.

## 5. Cambia los valores de las variables Sepal.Length
## Sepal.Width de las 5 primeras observaciones por NA.

iris[c(1:5),c(1:2)] <- NA

iris

## 6. >Que pasa si usamos ahora las funciones mean(), range()
## con las variables Sepal.Length y Sepal.Width? >Tiene el
## mismo problema la funcion summary()?

?mean
mean(iris$Sepal.Length)
mean(iris$Sepal.Width)
mean(iris$Petal.Length)
mean(iris$Petal.Width)
mean(iris$Species) # La media de un Factor retorna Error

?range
range(iris$Sepal.Length)
range(iris$Sepal.Width)
range(iris$Petal.Length)
range(iris$Petal.Width)
range(iris$Species) # El rango de un Factor retorna Error.

'Al cambiar los primeros 5 valores de las varibales por NA, las funciones mean() y range() me 
retorna NA, ya que estas funciones tiene en cuenta los valores NA'

summary(iris)
iris

'Sin embargo no occure lo mismo con la funcion summary, ya que no tiene en cuenta los valores
NA y me devuelve la media y los valores maximos y minimos den rango de las dos varibales'

## 7. Ver la documentacion de mean(), range(), etc. >Que
## parametro habra que cambiar para arreglar el problema
## anterior?.

?mean
mean(iris$Sepal.Length, na.rm = T)
mean(iris$Sepal.Width, na.rm = T)
mean(iris$Petal.Length, na.rm = T)
mean(iris$Petal.Width, na.rm = T)
mean(iris$Species, na.rm = T) # La media de un Factor retorna Error

?range
range(iris$Sepal.Length, na.rm = T)
range(iris$Sepal.Width, na.rm = T)
range(iris$Petal.Length, na.rm = T)
range(iris$Petal.Width, na.rm = T)
range(iris$Species, na.rm = T) # El rango de un Factor retorna Error.

'debemos de parametrizar la funcion con na.rm = T, para que no tenga en cuenta los valores
NA, en las funciones mean() y range()'

## 8. Visto lo anterior, >por que es importante codicar los
## missing values como NA y no como 0, por ejemplo?

'Porque al codificarlos como NA, y al parametrizar el valor na.rm = T, los NA los omite la
funcion, sin embargo, si codificamos con 0, la funcion tomara el 0 como un valor y este haria
que el resultado cambie significativamente'

## 9. Eliminar los valores NA usando na.omit().

na.omit(iris)

'Al omitir los NA, hace que se eliminen las primeras 5 filas'


## 10. Calcular la media de la variable Petal.Length para cada
## uno de las distintas especies (Species). Pista: usar la
## funcion tapply().


tapply(iris$Petal.Length,as.factor(iris$Species),mean, simplify = T)