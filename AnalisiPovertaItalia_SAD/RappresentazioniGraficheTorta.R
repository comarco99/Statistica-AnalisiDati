
#COSTRUIAMO IL VETTORE ITALIA

italia<-c(rep("Grande difficolt�", 7.9), rep("Media difficolt�", 14.6), 
          rep("Poca difficolt�", 68.4), rep("Senza difficolt�/molta facilit�", 9.2))

#COSTRUZIONE GRAFICO A TORTA

pie(table(italia), col=1:4, main="Percentuale italiana della capacità delle famgilie di arrivare a fine mese")


#GRAFICO A TORTA NORD-OVEST
nord_ovest<-c(rep("Grande difficolt�", 4.8), rep("Media difficolt�", 10.5), rep("Poca difficolt�", 71.9), rep("Senza difficolt�/molta facilit�", 12.8))
pie(table(nord_ovest), col=4:8, main="Percentuale nord-ovest della capacit� delle famgilie di arrivare a fine mese")


#GRAFICO A TORTA NORD-EST
nord_est<-c(rep("Grande difficolt�",3.4), rep("Media difficolt�",8.9), rep("Poca difficolt�", 76.6), rep("Senza difficolt�/molta facilit�",10.1 ))
pie(table(nord_est), col=8:11, main="Percentuale nord-est della capacit� delle famgilie di arrivare a fine mese")


#GRAFICO A TORTA CENTRO
centro<-c(rep("Grande difficolt�", 6.1), rep("Media difficolt�",16.2), rep("Poca difficolt�", 69.1), rep("Senza difficolt�/molta facilit�",8.6 ))
pie(table(centro), col=11:14, main="Percentuale centro della capacit� delle famgilie di arrivare a fine mese")



#GRAFICO A TORTA SUD
sud<-c(rep("Grande difficolt�",16.0), rep("Media difficolt�",21.0), rep("Poca difficolt�",57.8), rep("Senza difficolt�/molta facilit�",5.2))
pie(table(sud), col=14:17, main="Percentuale sud della capacit� delle famgilie di arrivare a fine mese")



#GRAFICO A TORTA ISOLE
isole<-c(rep("Grande difficolt�",11.7), rep("Media difficolt�",20.3), rep("Poca difficolt�",61.3), rep("Senza difficolt�/molta facilit�",6.8))
pie(table(isole), col=17:20, main="Percentuale isole della capacit� delle famgilie di arrivare a fine mese")

