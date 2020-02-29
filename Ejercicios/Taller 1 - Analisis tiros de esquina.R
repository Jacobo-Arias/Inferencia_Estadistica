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
m[1]

tab <- table(a_equipo,a_corner)
tab

plot(a_equipo,a_corner)

margin.table(tab)
tab[,1]

addmargins(tab) #por qué todos tienen 13

prop_corner <-prop.table(tab,1)
prop_corner
addmargins(prop_corner)
#Ajustar porcentajes
per_corner <- prop_corner*100
per_corner

rownames(per_corner)
per_corner[1,]

rownames(per_corner)[1]
per_corner[1]


grafica <- barplot(tab[1,], main = "Cantidad de corners anotados como local Arsenal 2019-2020", ylim = c(0,10), ylab = "Partidos", xlab = "goles")
text(grafica,tab[1,], pos=3, format(tab[1,]),xpd = TRUE, col = "blue")

#MEdias de tendencia central

ars <- tab[1,]
ars
median[ars]
mean[ars]

valores <- table(tab[1,])
valores
moda <- sort(valores,decreasing = TRUE)
moda
rownames(moda)[1]
