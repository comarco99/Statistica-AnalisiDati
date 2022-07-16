
#REGRESSIONE SEMPLICE #grande diventa media  poca diventa grande
summary(lm(media_difficolta~grande_difficolta))$r.square

#REGRESSIONE NON LINEARE
regressione_nonlineare<-lm(media_difficolta~grande_difficolta+I(grande_difficolta^2))
regressione_nonlineare

summary(regressione_nonlineare)$r.square

#SCATTERPLORT REGRESSIONE NON LINEARE

alpha <- regressione_nonlineare$coefficients[[1]]
beta <- regressione_nonlineare$coefficients[[2]]
gamma <- regressione_nonlineare$coefficients[[3]]

plot(grande_difficolta,media_difficolta,main="Scatterplot"
     ,xlab="grande difficolta",ylab="media difficolta" , col = "red")

curve(alpha+beta*x+gamma*x^2, add=TRUE, col = "green")


stimati_nonlineare<-fitted(regressione_nonlineare)
segments(grande_difficolta,stimati_nonlineare ,grande_difficolta, media_difficolta, col="blue")
