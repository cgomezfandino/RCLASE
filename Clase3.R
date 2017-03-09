# Clase No.3

a <- 8

cat(a) #concatenar
print(a) #imprimir

#para leer tablas read.table()
#para leer datos csv read.csv()

# mide el tiempo de ejecucion
system.time()
# y devuelve tres valores User,Time, Elapsed


#crear funciones

mi_funcion <- function(x) {
  return(x^2) #escogemos la variable
}


mi_funcion2 <- function(x, cond) {
  if (cond > 0) return(x^2) #escogemos la variable
  x^3
}

mi_funcion(1:10)

mi_funcion2(1:10,0)



