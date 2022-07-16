
#COSTRUIAMO IL VETTORE ITALIA

italia<-c(rep("Grande difficoltà", 7.9), rep("Media difficoltà", 14.6), 
          rep("Poca difficoltà", 68.4), rep("Senza difficoltà/molta facilità", 9.2))

#COSTRUZIONE GRAFICO A TORTA

pie(table(italia), col=1:4, main="Percentuale italiana della capacitÃ  delle famgilie di arrivare a fine mese")


#GRAFICO A TORTA NORD-OVEST
nord_ovest<-c(rep("Grande difficoltà", 4.8), rep("Media difficoltà", 10.5), rep("Poca difficoltà", 71.9), rep("Senza difficoltà/molta facilità", 12.8))
pie(table(nord_ovest), col=4:8, main="Percentuale nord-ovest della capacità delle famgilie di arrivare a fine mese")


#GRAFICO A TORTA NORD-EST
nord_est<-c(rep("Grande difficoltà",3.4), rep("Media difficoltà",8.9), rep("Poca difficoltà", 76.6), rep("Senza difficoltà/molta facilità",10.1 ))
pie(table(nord_est), col=8:11, main="Percentuale nord-est della capacità delle famgilie di arrivare a fine mese")


#GRAFICO A TORTA CENTRO
centro<-c(rep("Grande difficoltà", 6.1), rep("Media difficoltà",16.2), rep("Poca difficoltà", 69.1), rep("Senza difficoltà/molta facilità",8.6 ))
pie(table(centro), col=11:14, main="Percentuale centro della capacità delle famgilie di arrivare a fine mese")



#GRAFICO A TORTA SUD
sud<-c(rep("Grande difficoltà",16.0), rep("Media difficoltà",21.0), rep("Poca difficoltà",57.8), rep("Senza difficoltà/molta facilità",5.2))
pie(table(sud), col=14:17, main="Percentuale sud della capacità delle famgilie di arrivare a fine mese")



#GRAFICO A TORTA ISOLE
isole<-c(rep("Grande difficoltà",11.7), rep("Media difficoltà",20.3), rep("Poca difficoltà",61.3), rep("Senza difficoltà/molta facilità",6.8))
pie(table(isole), col=17:20, main="Percentuale isole della capacità delle famgilie di arrivare a fine mese")

