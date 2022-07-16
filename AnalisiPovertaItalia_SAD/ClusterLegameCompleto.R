matrice_distanze<-dist(matrice_capacita_arrivare_fine_mese, method = "euclidean", diag=TRUE, upper =FALSE)

#METODO DEL LEGAME COMPLETO

legame_completo<-hclust(matrice_distanze,method="complete")
legame_completo$merge



plot(legame_completo, hang=-1, xlab="Metodo gerarchico agglomerativo", sub="del legame completo")
axis(side=4, at=round(c(0,legame_completo$height),2))
abline(h=1.2, lty=2, col="red")


rect.hclust(legame_completo, k=5, border="blue")

cutree(legame_completo, k=5, h=NULL)

#INDICI LEGAME COMPLETO

taglio_completo<-cutree(legame_completo, k=5)
taglio_completo_list<-list(taglio_completo)
aggregate(matrice_capacita_arrivare_fine_mese, taglio_completo_list, mean)

aggregate(matrice_capacita_arrivare_fine_mese, taglio_completo_list, var)

aggregate(matrice_capacita_arrivare_fine_mese, taglio_completo_list, sd)


#MISURA NON OMOGENEITA

numero_righe<-nrow(matrice_capacita_arrivare_fine_mese)
trH<-(numero_righe-1)*sum(apply(matrice_capacita_arrivare_fine_mese,2, var))
trH

taglio_completo<-cutree(legame_completo, k=5)
taglio_completo_list<-list(taglio_completo)
num<-table(taglio_completo)


agvar<-aggregate(matrice_capacita_arrivare_fine_mese, taglio_completo_list, var)[, -1]

trH1_completo<-(num [[1]]-1)*sum(agvar[1, ])
if(is.na(trH1_completo))
  trH1_completo<-0

trH2_completo<-(num [[2]]-1)*sum(agvar[2, ])
if(is.na(trH2_completo))
  trH2_completo<-0

trH3_completo<-(num [[3]]-1)*sum(agvar[3, ])
if(is.na(trH3_completo))
  trH3_completo<-0

trH4_completo<-(num [[4]]-1)*sum(agvar[4, ])
if(is.na(trH4_completo))
  trH4_completo<-0

trH5_completo<-(num [[5]]-1)*sum(agvar[5, ])
if(is.na(trH5_completo))
  trH5_completo<-0


sum <- trH1_completo+trH2_completo+trH3_completo+trH4_completo+trH5_completo 
sum
trB <- trH - sum
trB/trH




