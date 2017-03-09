#crear una matriz y un dataframe

m <- matrix(1:60, 10, 6)
df <- as.data.frame(m)
class(m)
class(df)

write.table(df, "prueba.txt", row.names = F)
dfnew <- read.table("prueba.txt", header = T) #al importar la tabla especificar si tiene  la cabecera

class(df)
mode(df)
t <- list(1:100)
y <- array(t)
y

class(y)
class(t)
t[[1]] <- 10:20
y[[1]] <- 10:20
t
y
