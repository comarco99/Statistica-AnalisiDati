
#PLOT DIAGRAM FAMIGLIE CON GRANDI DIFFICOLTA
plot(grande_difficolta, ylab="Percentuale famiglie con grandi difficolta", xlab="Regioni", col=1:19, type="b", axes=FALSE)
axis(side=2)
axis(side=1, at=1:19, labels=etichette_regioni, cex.axis=0.50)



#PLOT DIAGRAM FAMIGLIE CON MEDIA DIFFICOLTA
plot(media_difficolta, ylab="Percentuale famiglie con media difficolta", xlab="Regioni", col=20:40, type="b", axes=FALSE)
axis(side=2)
axis(side=1, at=1:19, labels=etichette_regioni, cex.axis=0.50)





#PLOT DIAGRAM FAMIGLIE CON POCA DIFFICOLTA
plot(poca_difficolta, ylab="Percentuale famiglie con poca difficolta", xlab="Regioni", col=1:19, type="b", axes=FALSE)
axis(side=2)
axis(side=1, at=1:19, labels=etichette_regioni, cex.axis=0.50)





#PLOT DIAGRAM FAMIGLIE SENZA DIFFICOLTA
plot(molta_facilita, ylab="Percentuale famiglie senza difficolta", xlab="Regioni", col=1:19, type="b", axes=FALSE)
axis(side=2)
axis(side=1, at=1:19, labels=etichette_regioni, cex.axis=0.50)

