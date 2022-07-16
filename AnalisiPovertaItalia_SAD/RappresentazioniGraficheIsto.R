
#ISTOGRAMMA FAMIGLIE CON GRANDI DIFFICOLTÀ ASSOLUTE
grandi_difficolta_isto<-hist(grande_difficolta, freq=TRUE, main="Istogramma famiglie con grandi difficoltà",
                             ylab="Frequenza assoluta delle classi", col=1:7)

str(grandi_difficolta_isto)


#ISTOGRAMMA FAMIGLIE CON GRANDI DIFFICOLTÀ RELATIVE
grandi_difficolta_isto2<-hist(grande_difficolta, freq=FALSE, main="Istogramma famiglie con grandi difficoltà",
                             ylab="Frequenza relativa delle classi", col=1:7)

#-------------------------------------------------------------------------------
#ISTOGRAMMA FAMIGLIE CON MEDIE DIFFICOLTÀ ASSOLUTE
media_difficolta_isto<-hist(media_difficolta, freq=TRUE, main="Istogramma famiglie con media difficoltà",
                             ylab="Frequenza assoluta delle classi", col=1:7)

str(media_difficolta_isto)


#ISTOGRAMMA FAMIGLIE CON MEDIE DIFFICOLTÀ RELATIVE
media_difficolta_isto2<-hist(media_difficolta, freq=FALSE, main="Istogramma famiglie con media difficoltà",
                              ylab="Frequenza relativa delle classi", col=1:7)

#-------------------------------------------------------------------------------
#ISTOGRAMMA FAMIGLIE CON POCHE DIFFICOLTÀ ASSOLUTE
poche_difficolta_isto<-hist(poca_difficolta, freq=TRUE, main="Istogramma famiglie con poca difficoltà",
                            ylab="Frequenza assoluta delle classi", col=1:7)

str(poche_difficolta_isto)

#-------------------------------------------------------------------------------
#ISTOGRAMMA FAMIGLIE SENZA DIFFICOLTÀ ASSOLUTE
senza_difficolta_isto<-hist(molta_facilita, freq=TRUE, main="Istogramma famiglie senza difficoltà",
                            ylab="Frequenza assoluta delle classi", col=1:7)

str(senza_difficolta_isto)

#-------------------------------------------------------------------------------
#KERNEL DENSITY PLOT ISTOGRAMMA FAMIGLIE SENZA DIFFICOLTA
d1<-density(molta_facilita, kernel="gaussian")
plot(d1, lwd=2, main="Gaussian kernel", col="blue")

