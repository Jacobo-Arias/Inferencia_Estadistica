5+5
x <- 42
y <- 8
xy <- x+y

remove(xy)

m1 <- matrix(1:20, byrow = TRUE, nrow = 5,ncol = 4)
m1
m2 <- matrix(1:20, byrow = FALSE, nrow = 5,ncol = 4)
m2

m1[1,3]
m1[1,]
m1[,3]

mtcars
class(mtcars)
hea(mtcars) #Los primeros datos
tail(mtcars) #Los ultimos datos
dim(mtcars)
str(mtcars)


planetas <- c("Mercurio","Venus","tierra","Marte","Jupiter","Saturno","Urano","Neptuno")
tipo <- c("solido","solido","solido","solido","gas","gas","gas","gas")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007,3.883)
rotacion <- c(58.64, -243.02, 1, 1.03, 0.42, 0.43, -0.72, 0.67)
anillo <- c(FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE)
planetas_df <- data.frame(planetas, tipo, diametro, rotacion, anillo)

planetas_df$diametro
mean(planetas_df$diametro) #Media
sd(planetas_df$diametro) #Desviacion estandar
planetas_df$diametro
