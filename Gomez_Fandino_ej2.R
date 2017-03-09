#random <- read.table("random.data")
data <- as.data.frame(matrix(rnorm(1000000),10,100000))
#class(data)

mediaColumnas <- function(x){
  
  if(!is.data.frame(x)){
    return(NA)
  }
  
  j <- numeric(ncol(x))
  
  for (i in 1:ncol(x))
  j[i] <- mean(x[,i])
  return (j)
}

# se guardarn los calculos de cada funcion en una variable
databucle <- mediaColumnas(data)
datasapply <-sapply(data,mean)
datacolmeans <- colMeans(data)


#comparacion de que la media halla sido calculada bien en cada funcion

databucle == datasapply
datasapply == datacolmeans
datacolmeans == databucle

#medicion de tiempo por proceso 
system.time(mediaColumnas(data)) # Fue el proceso que mas tardo con 21.67 milisegundos
system.time(sapply(data,mean)) #tuvo una velocidad de 1.03 miliseguntos
system.time(colMeans(data)) # es mas optimo con una velocidad de ejecucion de 0.95 milisegundos

#Otra forma de medir el tiempo, sin ambargo debemos de restar los valores de t1-t2-t3 para concoer cada lapso
t0 <- proc.time()
mediaColumnas(data)
t1 <- proc.time()
sapply(data,mean)
t2 <- proc.time()
colMeans(data)
t3 <- proc.time()








