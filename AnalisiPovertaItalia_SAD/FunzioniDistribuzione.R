
#ESEMPIO FUNZIONE DISTRIBUZIONE DISCRETA

#plot( ecdf(grande_difficolta),
 # main="Funzione di distribuzione empirica discreta per famiglie con grandi difficolt√†",
  #verticals = TRUE , col="blue")

#-----------------------------------------------------------------------------------

#CLASSI PER DISTRIBUZIONE CONTINUA
classi_distribuzione_continua<- c(0,2,12,22,32,42,52,62,72,82,92)

classi_distribuzione_continua_grande<- c(0,2,6,10,14,18,22,26,30)

#DISTRIBUZIONE CONINTUA FAMIGLIE CON GRANDE DIFFICOLTA
  
frequenza_cumulativa_grande_difficolta<-cumsum(table(cut(grande_difficolta,breaks=classi_distribuzione_continua_grande,right =FALSE)))/length(grande_difficolta)

frequenza_cumulativa_grande_difficolta<- c(0,frequenza_cumulativa_grande_difficolta)

plot(classi_distribuzione_continua_grande, frequenza_cumulativa_grande_difficolta, 
     type = "b", axe =FALSE,
     main = "Funzione di distribuzione empirica continua famgilie con grandi difficolt‡",
     col="blue", xlab = "Classi", ylab = "Frequenze cumulate")

axis(1, classi_distribuzione_continua_grande, cex.axis=0.80)
axis(2, format(frequenza_cumulativa_grande_difficolta, digits = 2), cex.axis=0.80)
box()



#DISTRIBUZIONE CONINTUA FAMIGLIE CON MEDIA DIFFICOLTA
classi_distribuzione_continua_media<- c(3,6,12,18,24,30,33)

frequenza_cumulativa_media_difficolta<-cumsum(table(cut(media_difficolta,
                                                         breaks=classi_distribuzione_continua_media,
                                                         right =FALSE)))/length(media_difficolta)

frequenza_cumulativa_media_difficolta<- c(0,frequenza_cumulativa_media_difficolta)

plot(classi_distribuzione_continua_media, frequenza_cumulativa_media_difficolta, 
     type = "b", axe =FALSE,
     main = "Funzione di distribuzione empirica continua famgilie con media difficolt‡",
     col="red", xlab = "Classi", ylab = "Frequenze cumulate")

axis(1, classi_distribuzione_continua_media, cex.axis=0.80)
axis(2, format(frequenza_cumulativa_media_difficolta, digits = 2), cex.axis=0.80)
box()


#DISTRIBUZIONE CONINTUA FAMIGLIE CON POCA DIFFICOLTA
classi_distribuzione_continua_poca<- c(35,41,51,61,71,81,85)


frequenza_cumulativa_poca_difficolta<-cumsum(table(cut(poca_difficolta,
                                                        breaks=classi_distribuzione_continua_poca,
                                                        right =FALSE)))/length(poca_difficolta)

frequenza_cumulativa_poca_difficolta<- c(0,frequenza_cumulativa_poca_difficolta)

plot(classi_distribuzione_continua_poca, frequenza_cumulativa_poca_difficolta, 
     type = "b", axe =FALSE,
     main = "Funzione di distribuzione empirica continua famgilie con poca difficolt‡",
     col="green", xlab = "Classi", ylab = "Frequenze cumulate")

axis(1, classi_distribuzione_continua_poca, cex.axis=0.80)
axis(2, format(frequenza_cumulativa_poca_difficolta, digits = 2), cex.axis=0.80)
box()


#DISTRIBUZIONE CONINTUA FAMIGLIE SENZA DIFFICOLTA
classi_distribuzione_continua_facile<- c(0,2,7,12,17,20)

frequenza_cumulativa_molta_facilita<-cumsum(table(cut(molta_facilita,
                                                       breaks=classi_distribuzione_continua_facile,
                                                       right =FALSE)))/length(molta_facilita)

frequenza_cumulativa_molta_facilita<- c(0,frequenza_cumulativa_molta_facilita)

plot(classi_distribuzione_continua_facile, frequenza_cumulativa_molta_facilita, 
     type = "b", axe =FALSE,
     main = "Funzione di distribuzione empirica continua famgilie senza difficolt‡",
     col="black", xlab = "Classi", ylab = "Frequenze cumulate")

axis(1, classi_distribuzione_continua_facile, cex.axis=0.80)
axis(2, format(frequenza_cumulativa_molta_facilita, digits = 2), cex.axis=0.80)
box()



