
#QUANTILI E BOXPLOT FAMIGLIE CON GRANDI DIFFICOLTA
quantile(grande_difficolta)
summary(grande_difficolta)

boxplot(grande_difficolta, main="Boxplot famiglie con grandi difficoltà", col="blue", axes=FALSE)
axis(side=2, 2:20, cex.axis=0.5)

box()



#QUANTILI E BOXPLOT FAMIGLIE CON MEDIA DIFFICOLTA
quantile(media_difficolta)
summary(media_difficolta)

boxplot(media_difficolta, main="Boxplot famiglie con media difficoltà", col="red", axes=FALSE)
axis(side=2, 2:20, cex.axis=0.5)
box()



#QUANTILI E BOXPLOT FAMIGLIE CON POCA DIFFICOLTA
quantile(poca_difficolta)
summary(poca_difficolta)

boxplot(poca_difficolta, main="Boxplot famiglie con poca difficoltà", col="green", axes=FALSE)
axis(side=2, 2:20, cex.axis=0.5)
box()



#QUANTILI E BOXPLOT FAMIGLIE SENZA DIFFICOLTA
quantile(molta_facilita)
summary(molta_facilita)

boxplot(molta_facilita, main="Boxplot famiglie senza difficoltà", col="yellow", axes=FALSE)
axis(side=2, 2:20, cex.axis=0.5)
box()