# -----------------------------------------------------------------
?sample
sample(1:10) #genera numeros aleatorios de 1 a 10 sin repetir
sample(1:10, 5) #genera numeros aleatorios de 1 a 10 sin repetir y que me saque una muestra de 5
sample(1:10, 5, replace = T) # el replace lo pongo true (viene por defecto False), para que no me genere error
moneda <- sample(1:2, 100, replace = T) # generacion de lanzamientos de una moneda 100 veces
caracteres <- sample(c("AUD","USD"), 100, replace = T) # Podemos generar a su ves caracteres aleatoriamente
table(moneda) # me agrupa y me cuenta diciendome cuantos registros hay de cada valor
table(caracteres)

# -----------------------------------------------------------------
## funciones estadisticas
# -----------------------------------------------------------------

a <- runif(100) #Genera numeros aleactorios con distribucion uniforme

b <- rnorm(1) #Genera numeros aleactorio con distribucion normal

c<- dnorm(0) #me indica la posicion de la curva de la distribucion normal

# -----------------------------------------------------------------
## plots
# -----------------------------------------------------------------

plot(mtcars$mpg) #grafica una cadena de numeros
plot(iris$Species) #grafica cuando es un factor
plot(moneda)
plot(factor(moneda))
plot(iris$Species, iris$Sepal.Length) 
plot(mtcars)
hist(mtcars$mpg) #Histograma
?hist
dado <- sample(1:10, 100, replace=T)
hist(dado) # no me muestra las 10 caras
hist(dado, breaks=0:10) # brakes me permite colocar el numero de cortes que deseo


curve(x^2) #genera automaticamente valores para 'x' y lo grafica

curve(sin, -4, 4) #grafico principal
abline(h=0) # funcion de bajo nivel, que se aplica o añade a un grafico ya hecho.

curve((x^2*x)/x^4)

#parametros: add, axes, log, type, xlab, ylab, xlim, ylim, main, sub 








