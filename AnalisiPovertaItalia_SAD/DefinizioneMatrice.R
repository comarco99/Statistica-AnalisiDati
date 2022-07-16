#INIZIALIZZAZIONE DEI VETTORI COLONNA

grande_difficolta<-c(5.0, 4.6, 4.8, 9.0, 2.9, 3.4, 3.6, 3.6, 2.5, 3.0, 
                     8.9, 11.7, 12.4, 24.9, 10.5, 8.8, 8.2, 11.6, 12.0)

media_difficolta<-c(12.7, 8.7, 10.0, 18.9, 7.2, 12.1, 9.1, 8.9, 9.0, 14.6, 
                    22.3, 12.3, 20.8, 28.5, 19.0, 12.7, 13.0, 18.1, 26.2)

poca_difficolta<-c(69.3, 75.8, 72.2, 61.6, 78.7, 71.6, 79.6, 76.3, 80.7, 73.2, 
                   62.0, 66.8, 59.6, 42.4, 64.4, 71.6, 75.9, 63.6, 54.9)

molta_facilita<-c(13.0, 10.9, 13.0, 10.5, 11.2, 12.9, 7.7, 11.3, 7.8, 9.2, 
                  6.9, 9.2, 7.1, 4.2, 6.1, 7.0, 2.8, 6.7, 6.8)


#INIZIALIZZAZIONE DEL VETTORE PER I NOMI DELLE REGIONI 

regioni<-c("Piemonte", "Liguria", "Lombardia", "Trentino Alto-Adige", "Veneto", "Friuli-Venezia Giulia", 
           "Emilia-Romagna", "Toscana", "Umbria", "Marche", "Lazio", "Abruzzo", "Molise", "Campania", 
           "Puglia", "Basilicata", "Calabria", "Sicilia", "Sardegna")

#INIZIALIZZAZIONE DEL VETTORE PER I NOMI DELLE COLONNE

colonne<-c("Grande difficoltà", "Media difficoltà", "Poche difficoltà", "Molta facilità")

#COSTRUZIONE MATRICE

matrice_capacita_arrivare_fine_mese<-cbind(grande_difficolta, media_difficolta, 
                                           poca_difficolta, molta_facilita)

rownames(matrice_capacita_arrivare_fine_mese)<-regioni
colnames(matrice_capacita_arrivare_fine_mese)<-colonne

#COSTRUZIONE ETICHETTE PER LE REGIONI
etichette_regioni<-c("Pie", "Lig","Lom","Tre","Ven","Fri","Emi",
                     "Tos","Umb","Mar","Laz","Abr","Mol","Cam","Pug",
                     "Bas","Cal","Sic","Sar")






