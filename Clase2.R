
m <- matrix(1:20,5,4)
m <- matrix(1:20,nrow = 5,ncol = 4)
n <- matrix(1:20,nrow = 5,ncol = 4,byrow = T)

dim(m)

is.vector(dim(m))

length(dim(m))

#trae las filas 3 al 5 y todas las columnas menos la 2 y 3
m[3:5, -(2:3)]  

#cambiar la columnas por las filas
aperm(m,c(2,1))
# or
t(m)

dim(m)
dim(n)

sexo <- rep(c("Hombre","Mujer"),5)
sexo1 <- sample(c("Hombre","Mujer"),20, replace = T)

#factores, me imprime el array y me dice cuales son los valores unicos
f <- factor(sexo1)
#sirve para conocer cuales valores son diferentes
unique(sexo1)
#sirve solo sobre factores
levels(f)

renta <- sample(c(10,20,30),20,replace=T)

tapply(renta, fsexo, mean)

mean(renta[fsexo == "Hombre"])
mean(renta[fsexo == "Mujer"])

#creacion de lista
l <- list(a = 1, b = "hola", c = 1:5, d = list(f=5))

length(l)

l[[1]]
 
l$c

a <- 1:10
m <- matrix(1:20 , nrow = 10, ncol = 2)
c <- c("Hola",10)
vector <- 20:29
#las columnas del data.frame siempre tiene un nombre
# los df siempre R los vuelve listas
df <- data.frame(a,m,c,vector)



as.matrix(df)

attach(mtcars)
detach(mtcars)
#devuelve el nombre de las columnas de mtcars
names(mtcars)












