

#CALCOLO DI ALPHA E BETA 

#dipendente sopra inipendente sotto
#dipendente=media indipendente=grande


beta<-(sd(media_difficolta)/sd(grande_difficolta))*cor(media_difficolta , grande_difficolta)
alpha<-mean(media_difficolta)-beta*mean(grande_difficolta)
c(alpha ,beta)

#VISUALIZZAZIONE MODELLO LINEARE

linear_model<-lm(media_difficolta~grande_difficolta)
attributes(linear_model)
linear_model$coefficients

plot( grande_difficolta, media_difficolta, main="Retta di regressione", xlab="Grande difficoltà", ylab = "Media difficoltà" , col="red" )
abline(lm(media_difficolta~grande_difficolta), col =" blue ")

#RESIDUI

stimati<-fitted(lm(media_difficolta~grande_difficolta))
stimati

residui<-resid(lm(media_difficolta~grande_difficolta))
residui


#INDICI SUI RESIDUI

median(linear_model$residuals)

var(linear_model$residuals)

sd(linear_model$residuals)


#RAPPRESENTAZIONI GRAFICA DEI RESIDUI

plot(grande_difficolta, media_difficolta, main="Retta di regressione", xlab="Grande difficoltà", ylab = "Media difficoltà" , col="red" )

abline(lm(media_difficolta~grande_difficolta), col =" blue ")
stimati<-fitted(lm(media_difficolta~grande_difficolta))

segments(grande_difficolta, stimati, grande_difficolta, media_difficolta, col="magenta")


#GRAFICO DEI RESIDUI

residui<-resid(lm(media_difficolta~grande_difficolta))

plot(grande_difficolta, residui , main = "Diagramma dei residui", xlab = "grande difficoltà", ylab = " Residui ", pch =9 , col = "red")

abline (h =0 , col ="blue" , lty =2)



#RESIDUI STANDARDIZZATI

residui<-resid(lm(media_difficolta~grande_difficolta))
stimati<-fitted(lm(media_difficolta~grande_difficolta))

residuistandard <- residui/sd(residui)

plot(stimati, residuistandard , main =" Residui standard rispetto ai valori stimati ",
     xlab = " Valori stimati " , ylab =" Residui standard " , pch =5 , col =" red " )

abline (h =0 , col =" blue " , lty =2)

#COEFFICIENTE DI DETERMINAZIONE

(cor(grande_difficolta, media_difficolta))^2

summary(lm(media_difficolta~grande_difficolta))$r.square










