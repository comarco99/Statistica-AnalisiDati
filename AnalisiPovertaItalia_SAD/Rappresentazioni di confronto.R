
#RAPPRESENTAZIONE DI CONFRONTO TRAMITE BOXPLOT
par(mfrow=c(2,2))
boxplot(grande_difficolta, media_difficolta, poca_difficolta, molta_facilita, horizontal=TRUE, varwidth = TRUE,
        col=c("blue","red","green","yellow"))

#RAPPRESENTAZIONE DI CONFRONTO TRAMITE DISPERSIONE

pairs(matrice_capacita_arrivare_fine_mese,
      main = "Scatterplot per tutte le coppie di variabili")