#Tarea 1:
#Elegir dos programas de una misma facultad y decir en proporción quien rindió más
# Histograma
# Resumen de cada genero (summary)

grd <- read.csv("https://www.datos.gov.co/api/views/ha9e-e48s/rows.csv?accessType=DOWNLOAD")

ambiental <- subset(grd,grd$NOMBRE_PROGRAMA == "INGENIERIA AMBIENTAL")
progAmb <- ambiental$NOMBRE_PROGRAMA
notasAmb <- ambiental$PACUMULADO/10
sexosAmb <- ambiental$SEXO

ambiental <- data.frame(sexosAmb,notasAmb)
summary(ambiental$notasAmb)

ambiental$rendimiento[ambiental$notasAmb < 3.5] <- "bajo"
ambiental$rendimiento[ambiental$notasAmb >= 3.5 & ambiental$notasAmb < 4.0] <- "medio"
ambiental$rendimiento[ambiental$notasAmb >= 4.0 & ambiental$notasAmb <= 4.5] <- "medio alto"
ambiental$rendimiento[ambiental$notasAmb > 4.5] <- "alto"
rendimientoAmb <- ambiental$rendimiento

ambF <- subset(ambiental,ambiental$sexosAmb == "F")
ambM <- subset(ambiental,ambiental$sexosAmb == "M")

industrial <- subset(grd,grd$NOMBRE_PROGRAMA == "INGENIERIA INDUSTRIAL")
progInd <- industrial$NOMBRE_PROGRAMA
notasInd <- industrial$PACUMULADO/10
sexosInd <- industrial$SEXO

industrial <- data.frame(sexosInd,notasInd)
summary(industrial$notasInd)

industrial$rendimiento[industrial$notasInd < 3.5] <- "bajo"
industrial$rendimiento[industrial$notasInd >= 3.5 & industrial$notasInd < 4.0] <- "medio"
industrial$rendimiento[industrial$notasInd >= 4.0 & industrial$notasInd <= 4.5] <- "medio alto"
industrial$rendimiento[industrial$notasInd > 4.5] <- "alto"
rendimientoInd <- industrial$rendimiento


indF <- subset(industrial, industrial$sexosInd == "F")
indM <- subset(industrial, industrial$sexosInd == "M")

tab_ind <- table(sexosInd,rendimientoInd)
tab_amb <- table(sexosAmb,rendimientoAmb)

tab_ind
tab_amb

plot(sexosInd,notasInd)
plot(sexosAmb,notasAmb)

margin.table(tab_amb)
margin.table(tab_ind)

addmargins(tab_amb)
addmargins(tab_ind)

prop_AMB <- prop.table(tab_amb,1)
prop_AMB

prop_IND <- prop.table(tab_ind,1)
prop_IND

per_IND <- prop_IND * 100
per_IND

per_AMB <- prop_AMB * 100
per_AMB
tab_amb


graficaMamb <- barplot(per_AMB[1,], main = "Mujeres Ambiental", ylim = c(0,100), ylab = "Porcentaje", xlab = "Rendimiento")
text(grafica,per_AMB[1,], pos=3, format(per_AMB[1,]),xpd = TRUE, col = "blue")

graficaHamb <- barplot(per_AMB[2,], main = "Hombres Ambiental", ylim = c(0,100), ylab = "Porcentaje", xlab = "Rendimiento")
text(grafica,per_AMB[2,], pos=3, format(per_AMB[2,]),xpd = TRUE, col = "blue")

graficaMind <- barplot(per_IND[1,], main = "Mujeres Industrial", ylim = c(0,100), ylab = "Porcentaje", xlab = "Rendimiento")
text(grafica,per_IND[1,], pos=3, format(per_IND[1,]),xpd = TRUE, col = "blue")

graficaHind <- barplot(per_IND[2,], main = "Hombres Ambiental", ylim = c(0,100), ylab = "Porcentaje", xlab = "Rendimiento")
text(grafica,per_IND[2,], pos=3, format(per_IND[2,]),xpd = TRUE, col = "blue")


barplot(per_AMB, main="Hombres y Mujeres Ambiental",xlab="Rendimiento",ylab = "Porcentaje" , col=c("darkblue","red"),legend = rownames(per_AMB), beside=TRUE, ylim = c(0,100))

barplot(per_IND, main="Hombres y Mujeres Ambiental",xlab="Rendimiento",ylab = "Porcentaje", col=c("darkblue","red"),legend = rownames(per_IND), beside=TRUE, ylim = c(0,100))
