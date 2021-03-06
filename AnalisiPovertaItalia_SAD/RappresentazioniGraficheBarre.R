#COSTRUZIONE ETICHETTE PER LE REGIONI
etichette_regioni<-c("Pie", "Lig","Lom","Tre","Ven","Fri","Emi",
                     "Tos","Umb","Mar","Laz","Abr","Mol","Cam","Pug",
                     "Bas","Cal","Sic","Sar")



#GRAFICO A BARRE PERCENTUALE DI PERSONE CON GRANDI DIFFICOLTÀ

barplot(matrice_capacita_arrivare_fine_mese[,1], col=1:19, main="Percentuale di famiglie con grandi difficolt� ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,1]), 0, col = "red", lty = 2, lwd = 3)


#GRAFICO A BARRE PERCENTUALE DI PERSONE CON MEDIA DIFFICOLTÀ

barplot(matrice_capacita_arrivare_fine_mese[,2], col=1:19, main="Percentuale di famiglie con media difficolt� ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,2]), 0, col = "red", lty = 2, lwd = 3)

#GRAFICO A BARRE PERCENTUALE DI PERSONE CON POCHE DIFFICOLTÀ
barplot(matrice_capacita_arrivare_fine_mese[,3], col=1:19, main="Percentuale di famiglie con poche difficolt� ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,3]), 0, col = "red", lty = 2, lwd = 3)



#GRAFICO A BARRE PERCENTUALE DI PERSONE SENZA DIFFICOLTÀ/MOLTA FACILITÀ
barplot(matrice_capacita_arrivare_fine_mese[,4], col=1:19, main="Percentuale di famiglie senza difficolt� ad arrivare a fine mese", names.arg = etichette_regioni)
abline(mean(matrice_capacita_arrivare_fine_mese[,4]), 0, col = "red", lty = 2, lwd = 3)


