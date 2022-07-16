
#y dipende da x1+..+np

#REGRESSIONE MULTIPLA

regressione_lineare_multipla<-lm(media_difficolta~grande_difficolta+poca_difficolta+molta_facilita)
regressione_lineare_multipla

#VALORI STIMATI

stimati_multipla<-fitted(lm(media_difficolta~grande_difficolta+poca_difficolta+molta_facilita))

#VALORI RESIDUI

residui_multipla<-resid(lm(media_difficolta~grande_difficolta+poca_difficolta+molta_facilita))

#VALORI RESIDUI STANDARDIZZATI

residui_standard_multipli<-residui_multipla/sd(residui_multipla)
residui_standard_multipli

#GRAFICO RESIDUI STANDARDIZZATI

plot(stimati_multipla, residui_standard_multipli, main="Residui standard rispetto quelli stimati", 
     xlab="Valori stimati", ylab="Residui standard", pch=4, col="blue")
abline(h=0, col="red", lty=2)

#COEFFICIENTE DI DETERMINAZIONE
summary(regressione_lineare_multipla)$r.square