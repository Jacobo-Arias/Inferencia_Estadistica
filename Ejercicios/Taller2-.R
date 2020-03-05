grd <- read.csv("https://www.datos.gov.co/api/views/ha9e-e48s/rows.csv?accessType=DOWNLOAD")

prog <- grd$NOMBRE_PROGRAMA
prom <- grd$PACUMULADO
library(dplyr)
datos <- data.frame(facultades,prog,prom)
subsetFac <- subset(datos,datos$facultades == "INGENIERIA")
#subset1 <- datos[which(datos$facultades=='INGENIERIA'),]
#subsetFac2 <- subset(subsetFac,str_detect (prog,"ING"))
#subsetFac
#rm(subsetFac2)

posg <- str_detect(subsetFac$prog,"MAES.*|DOCTORADO.*|ESPECIALIZACION|TEC")
subsetFac <- cbind(subsetFac,posg) #agrega una nueva columna

pregrado <- subset(subsetFac,subsetFac$posg == FALSE)
head(pregrado)
table(droplevels(pregrado$prog))
pregrado2 <- pregrado[-4]
pregrado2$prog
#Tarea, hacer que datos solo tenga los datos de promedio de ingenierias de pregrado, 
#frecuencia x ingeieria, Se necesita una tabla de contingencia
pregrado2$rendimiento[pregrado2$prom < 3.5] <- "bajo"
pregrado2$rendimiento[pregrado2$prom >= 3.5 & pregrado2$prom < 4.0] <- "medio"
pregrado2$rendimiento[pregrado2$prom >= 4.0 & pregrado2$prom <= 4.5] <- "medio alto"
pregrado2$rendimiento[pregrado2$prom > 4.5] <- "alto"

table(pregrado2$rendimiento) # Cuenta cuantos hay en cada catergoria de rendimiento

head(prom)
head(prog)

summary(prom) #resumen de la variable
summary(prog) #solo funciona  con variables numericas
#una opcion es volverlo una tabla de frecuencia y sobre dicha tabla sacarle el summary

levels(prog)
#install.packages("stringr")
library(stringr)

maestria <- str_detect(prog,"MAES.*|DOCTORADO.*|ESPECIALIZACION") #detecta los que tiene MAESTRIA
pregrados <- prog[!maestria]
promedios <- prom[!maestria]

head(pregrados)
levels(pregrados)
levels(facultades)

length(prog) #5576
length(pregrados) #3427 
length(promedios)
#los datos son consistentes debido a que la mayoría de graduados son mayorias

table(pregrados)

datos
