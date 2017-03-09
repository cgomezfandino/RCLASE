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







