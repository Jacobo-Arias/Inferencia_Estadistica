#Taller 1 
#Analisis tiros de esquina del local "HC"

fing <- read.csv("https://www.football-data.co.uk/mmz4281/1920/E0.csv") #Football Ingles
head(fing)
dim(fing)
datos <- fing[,c(1:24)]
levels(datos$HomeTeam)
mean(datos$HC)
sd(datos$HC)

datos$HomeTeam
datos$HC

a_equipo <- as.array(datos$HomeTeam)
a_corner <- as.array(datos$HC)
a_equipo
a_corner
levels(a_equipo)
m <- data.frame(a_equipo,a_corner)
m
