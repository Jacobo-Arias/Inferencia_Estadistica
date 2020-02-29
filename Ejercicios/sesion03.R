#calculamos
# r = suma(Zx Zy)/ (n-1)
# z = (x - promedio(x))/s

gr <- c(50,100,200,300)
peso <- c(50,70,70,95)
prom_gr <- mean(gr);prom_gr
s_gr <- sd(gr);s_gr
z_gr <- (gr - prom_gr)/ s_gr;z_gr


#En R no hay que hacer un ciclo para hacer una operación sobre un conjunto de datos solo se pone el
#conjunto de datos y la operación se le hace a todos y cada uno de los datos de ese conjunto de datos
prom_peso <- mean(peso);prom_peso
s_peso <- sd(peso);s_peso
z_peso <- (peso - prom_peso)/s_peso;z_peso

r <- sum(z_gr*z_peso)/(length(z_gr) -1);r #correlación entre los gramos de chocolate y el peso
#r es el coeficiente de pearson 
plot(gr,peso,type="p")