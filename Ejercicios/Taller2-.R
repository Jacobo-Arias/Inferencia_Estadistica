grd <- read.csv("https://www.datos.gov.co/api/views/ha9e-e48s/rows.csv?accessType=DOWNLOAD")

prog <- grd$NOMBRE_PROGRAMA
prom <- grd$PACUMULADO
facultades <- grd$NOMBRE_FACULTAD

datos <- data.frame(facultades,prog,prom)
subsetFac <- subset(datos,facultades == "INGENIERIA")
#subset1 <- datos[which(datos$facultades=='INGENIERIA'),]
subsetFac2 <- subset(subsetFac,str_detect(prog,"ING"))
subsetFac2
rm(subsetFac2)

#Tarea, hacer que datos solo tenga los datos de promedio de ingenierias de pregrado, 
#frecuencia x ingeieria, Se necesita una tabla de contingencia

prom <- prom/10
prom


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
