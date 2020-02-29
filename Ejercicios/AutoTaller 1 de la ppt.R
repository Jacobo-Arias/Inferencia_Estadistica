notas <- c(7.4,7.9,4.1,8.1,6.2,7.1,7.4,6.7)
centro <- median(notas);centro #Centro de la distribución "Q2"
cv <- (sd(notas)/mean(notas))*100;cv  #Variabilidad de la distribución

tarifa <- c(43,35,34,58,30,30,36)
media <- mean(tarifa)
median(tarifa)
desvEst2 <- sd(tarifa)
desvEst2
varianza2 <- desvEst2^2
varianza2
moda <- modes(tarifa);moda

Varia <- function(tarifa) {
  media <- mean(tarifa)
  desvEst <- 0
  cont <- 0
  for (i in tarifa) {
    desvEst <- desvEst + (i - media)^2
    cont <- cont+1
  }
  cont
  varianza <- desvEst/(cont-1)
  return(varianza)
}

Desv <- function(tarifa) {
  varianza <- Varia(tarifa)
  Desv <- sqrt(varianza)
  return(Desv)
}
Varia(tarifa)
Desv(tarifa)
