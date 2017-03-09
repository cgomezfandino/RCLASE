numrand <- rnorm(10000, mean = 0, sd = 1)# genera 10.000 numeros aleatorios de distribucion normal con media 0 y desv 1

hist(numrand) # genera el histograma
?hist

numrand
min(numrand) #-4.134297
max(numrand) #3.532315


seqnum <- seq(-4.134297,3.532315,length.out = 100)
dnormseries <- dnorm(seqnum)
length(dnormseries)
?dnorm
# -----------------------------------------------------------------------------------------

hist(numrand, probability = F) # como no esta escalado no me permite ver la linea
lines(seqnum , dnormseries)

?hist
?lines()

#----------------------haciendo cambiar la distribucion del histograma---------------------

hist(numrand,probability = T) # me escala la distribucion normal y a se puede ver la linea
lines(seqnum, dnormseries)

#--------------otra forma de graficar la distribucion normal--------------------------------
#lyt = tipo de linea
#col= color

hist(numrand,probability = T)
curve(dnorm, -4, 4, add=T, col='red', lty = 3)


par(mfrow = c(2,2))
plot(mtcars$mpg)
plot(mtcars$wt)
plot(mtcars$drat)
