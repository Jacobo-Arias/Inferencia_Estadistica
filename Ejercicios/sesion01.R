#Inferencia estadistica
#Maestria en Ingenieria de sistemas y computacion
#Msc. Carlos Andres Lopez
#Laboratorio 1.

#Ctr + enter ejecuta una linea
# Suma
5 + 5 

# Resta
5 - 5 

# Multiplicacion
3 * 5

# Division
(5 + 5) / 2 

# Potencia
2^5

# Modulo
28%%6

#Asignar valores
x <- 42

# Imprimir variable x
x

# Crear dos variables
y <- 4
z <- 9

#sumar var.
x+y

# crear 
xy <- x+y

#======================================

#tipos de datos
n1 <- 3.4; n1
n2 <- "ejemplo"
n3 <- TRUE

# ver variables ls()
ls()

#eliminar
rm(xy)
# ver tipo de dato: class()
class(n1)
class(n2)
class(n3)
class(a)
a<-6
#Conversion de tipos (casting)
as.character(a)
a <- as.character(a)
class(n1)
s_n1 <- as.character(n1)
s_n1
n2<-"3"
n_n2 <- as.numeric(n2)
n_n2
class(n1);n1
is.character(n1)
is.numeric(n2)
is.character(s_n1)

# arrreglos
valores <- c(4,7,9)
nombres <- c("ana", "juan", "luisa")

valores
valores[1]
nombres
nombres[c(2,3)]

#Comparacion
# >, <, >=, <=, ==, !=
valores
valores > 5
mayores_a5 <- valores > 5
mayores_a5

#mostrar los mayores
valores[mayores_a5]
valores[valores>5]
valores
valores + 5
valores[mayores_a5] + 4

#Matrices
m1 <- matrix(1:20, byrow=TRUE, nrow=5, ncol=4)
m1
m2 <- matrix(1:20, byrow=FALSE, nrow=5, ncol=4)
m2
m3 <- matrix(1:20, byrow=FALSE, nrow=4, ncol=4)
m3
m4 <- matrix(1:10, byrow=FALSE, nrow=5, ncol=4)
m4
m1
m1 [1,3]
m1[1,]
m1[,3]

#Factores
#Almacena variables discretas, a diferencia de las continuas esta variable posee un numero
#limitado de categorias mientras que el continuo tiene infinito numero de categorias
estado_estudiante <- c("estudiante", "no estudiante", "estudiante", "no estudiante")
estado_estudiante
estado_estudiante <- factor(estado_estudiante)
estado_estudiante
#cat_estudiante
levels(estado_estudiante)

#Datos precargados
mtcars['cyl']
class(mtcars)
#inspeccion de registros
head(mtcars) #muestra de primeros elementos
dim(mtcars)
str(mtcars)

mtcars
#Datafames
planetas <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno")
tipo <- c("solido", "solido", "solido", "solido", "gas", "gas", "gas", "gas")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotacion <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
anillos <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

#rm(planetas_df)
planetas_df <- data.frame(planetas, tipo, diametro, rotacion, anillos)
planetas_df
#seleccionar valor de primera fila y 2a y 3a col. 
planetas_df[1,c(2,3)]
#ver diametros

planetas_df$planetas
planetas_df$diametro
planetas_df$anillos

#listas
vec_a <- 1:10 
vec_a
mean(vec_a)
mean(planetas_df$diametro)
sd(planetas_df$diametro)
planetas_df$diametro




mat_a <- matrix(1:9, ncol = 3)
mat_a
head(mtcars)
dim(mtcars)
cars_df <- mtcars[1:10,]
cars_df
dim(mtcars)
dim(cars_df)

lista <- list(vec_a, mat_a, cars_df)
lista
lista[[1]]
lista[[2]]
lista[[3]]

#ver 1a col. del 3er componente
lista [[3]][,1]
row.names(mtcars)
#=============================
#Ayuda
?mean
?sd
args(mean)

grados <- c(8.5, 7, 9, 5.5, 6)

#basado en el nombre
mean(x=grados)
#basado en la posicion
mean(grados)

grados <-c(8.5, 7, 9, NA, 6)
mean(x=grados)
#na.rm elimina valores NA
mean(grados,  na.rm =TRUE)

#Crear funciones
multi_ab <- function(a,b){
  return (a*b)
}
multi_ab(4,9)

#Cargar archivos
getwd()
directorio="/home/andres/maestria_clases/inferencia/R_clases/datos"
setwd(directorio)
datos <- read.csv("Liga1719.csv")
head(datos)
#http://www.football-data.co.uk/
liga_1819 <- read.csv("http://www.football-data.co.uk/mmz4281/1819/SP1.csv")
#bundes_1718 <- read.csv("bundes1718.csv")
#head(datos)
head(liga_1819)
liga_1819
#Ver archvos en directorio de trabajo
list.files()

mtcars
dim(mtcars)
# 1er valor numero de clases (filas) y el 2o numero de variables (columnas)
#  [, 1] mpg Millas/(US) galon.
#[, 2] cyl Num de cilindros
#[, 3] disp desp. (cub. pul.)
#[, 4] hp caballos fuerza
#[, 5] drat Rel eje trasero
#[, 6] wt Peso (lb/1000)
#[, 7] qsec aceleracion (1/4 mile in seconds) 
#[, 8] vs motor en V s/n
#[, 9] am caja (0 = automatic, 1 = manual)
#[,10] gear Num. cambios
#[,11] carb Num. carburadores
head(mtcars)
str(mtcars)
mtcars$am
levels(mtcars$am)
rm(mtcars2)
mtcars2 <- mtcars
head(mtcars2)
mtcars2$mpg
mtcars2$mpgcategoria[mtcars$mpg >= 20] <- "alto"
mtcars2$mpgcategoria[mtcars$mpg < 20] <- "bajo"
mtcars2$mpgcategoria

mtcars2$mpgfactor <- as.factor(mtcars2$mpgcategoria)
levels(mtcars2$mpgfactor)
mtcars2$mpgfactor
list(mtcars2)
cons_bajo <- mtcars2$mpgfactor == "bajo"
cons_bajo
mtcars2$mpg[ !cons_bajo ]


