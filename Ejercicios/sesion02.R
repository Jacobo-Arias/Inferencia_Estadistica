fing <- read.csv("https://www.football-data.co.uk/mmz4281/1920/E0.csv") #Football Ingles
head(fing)
dim(fing)
datos <- fing[,c(1:24)]
datos

levels(datos$HomeTeam)
mean(datos$FTHG)
sd(datos$FTHG)
mean(datos$FTHG)
sd(datos$FTHG)

datos$HomeTeam
datos$FTHG
soll
a_equipo <- as.array(datos$HomeTeam)
a_goles <- as.array(datos$FTHG)
a_equipo
a_goles
levels(a_equipo)
m <- data.frame(a_equipo,a_goles)
m

#tablas marginales
tab_local <- table(a_equipo,a_goles)
tab_local
plot(a_equipo,a_goles)
margin.table(tab_local)
tab_local[,1]

addmargins(tab_local)
#Proporciaon 1 por fila 2 por columna
prop_locales <- prop.table(tab_local,1)
prop_locales
#Adjustar porcentajes
per_locales <- prop_locales*100
per_locales

rownames(per_locales)

per_locales[1,]
rownames(per_locales)[1]
per_locales[1]

grafica <- barplot(tab_local[1,], main = "Cantidad de goles anotados como local Arsenal 2019-2020", ylim = c(0,10), ylab = "Partidos", xlab = "goles")
text(grafica,tab_local[1,], pos=3, format(tab_local[1,]),xpd = TRUE, col = "blue")

#Medidas de tendencia central
ars <- tab_local[1,]
ars
median(ars)
mean(ars)

valores <- table(tab_local[1,])
valores
moda <- sort(valores,decreasing = TRUE)
moda
rownames(moda)[1]
#modes(ars) matrix

