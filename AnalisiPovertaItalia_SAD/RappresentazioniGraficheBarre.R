#COSTRUZIONE ETICHETTE PER LE REGIONI
etichette_regioni<-c("Pie", "Lig","Lom","Tre","Ven","Fri","Emi",
                     "Tos","Umb","Mar","Laz","Abr","Mol","Cam","Pug",
                     "Bas","Cal","Sic","Sar")



#GRAFICO A BARRE PERCENTUALE DI PERSONE CON GRANDI DIFFICOLTÃ€

barplot(matrice_capacita_arrivare_fine_mese[,1], col=1:19, main="Percentuale di famiglie con grandi difficoltà ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,1]), 0, col = "red", lty = 2, lwd = 3)


#GRAFICO A BARRE PERCENTUALE DI PERSONE CON MEDIA DIFFICOLTÃ€

barplot(matrice_capacita_arrivare_fine_mese[,2], col=1:19, main="Percentuale di famiglie con media difficoltà ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,2]), 0, col = "red", lty = 2, lwd = 3)

#GRAFICO A BARRE PERCENTUALE DI PERSONE CON POCHE DIFFICOLTÃ€
barplot(matrice_capacita_arrivare_fine_mese[,3], col=1:19, main="Percentuale di famiglie con poche difficoltà ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,3]), 0, col = "red", lty = 2, lwd = 3)



#GRAFICO A BARRE PERCENTUALE DI PERSONE SENZA DIFFICOLTÃ€/MOLTA FACILITÃ€
barplot(matrice_capacita_arrivare_fine_mese[,4], col=1:19, main="Percentuale di famiglie senza difficoltà ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,4]), 0, col = "red", lty = 2, lwd = 3)


