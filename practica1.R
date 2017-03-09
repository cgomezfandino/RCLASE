a <- 1

b <- range(1,3,10)
b
c <- c(1,10,10)
d <- 1:100
d <- d*2
d
?mean
mode(c)
?vector

?sd
f <- sample(1:1000,10)
f
?order
sort(f)
order(f)
f
f[order(f)]
e <- matrix(1:10,5,2)
e[c(2:3),2]
j <- as.data.frame(matrix(1:100,10,10))
j
is.data.frame(j[[1])
mode(j)

j[[1]] <- c(11:20)
j[[9]] <- c(11:20)

mean(j[[1]])
?head
head(mtcars)
str(iris)
dim(iris)
mode(iris)
is.list(iris)
is.data.frame(iris)
dim(j)
str(j)
?str
#------------------------------------------------------------------------------------
xx <- "Hombres"
yy <-" Mujeres"

xxyy <- c(xx,yy)
xxyy
u <- as.data.frame(rep(xxyy,10))
levels(u[,1])
summary(u) 

