
#METODO DEL LEGAME MEDIO

legame_medio<-hclust(matrice_distanze,method="average")
legame_medio$merge



plot(legame_medio, hang=-1, xlab="Metodo gerarchico agglomerativo", sub="del legame medio")
axis(side=4, at=round(c(0,legame_medio$height),2))
abline(h=1.2, lty=2, col="red")

rect.hclust(legame_medio, k=5, border="blue")
cutree(legame_medio, k=5, h=NULL)

#INDICI LEGAME COMPLETO

taglio_medio<-cutree(legame_medio, k=5)
taglio_medio_list<-list(taglio_medio)
aggregate(matrice_capacita_arrivare_fine_mese, taglio_medio_list, mean)

aggregate(matrice_capacita_arrivare_fine_mese, taglio_medio_list, var)

aggregate(matrice_capacita_arrivare_fine_mese, taglio_medio_list, sd)


#MISURA NON OMOGENEITA

numero_righe<-nrow(matrice_capacita_arrivare_fine_mese)
trH<-(numero_righe-1)*sum(apply(matrice_capacita_arrivare_fine_mese,2, var))
trH

taglio_medio<-cutree(legame_medio, k=5)
taglio_medio_list<-list(taglio_medio)
num<-table(taglio_medio)


agvar<-aggregate(matrice_capacita_arrivare_fine_mese, taglio_medio_list, var)[, -1]

trH1_medio<-(num [[1]]-1)*sum(agvar[1, ])
if(is.na(trH1_medio))
  trH1_medio<-0

trH2_medio<-(num [[2]]-1)*sum(agvar[2, ])
if(is.na(trH2_medio))
  trH2_medio<-0

trH3_medio<-(num [[3]]-1)*sum(agvar[3, ])
if(is.na(trH3_medio))
  trH3_medio<-0

trH4_medio<-(num [[4]]-1)*sum(agvar[4, ])
if(is.na(trH4_medio))
  trH4_medio<-0

trH5_medio<-(num [[5]]-1)*sum(agvar[5, ])
if(is.na(trH5_medio))
  trH5_medio<-0


sum <- trH1_medio+trH2_medio+trH3_medio+trH4_medio+trH5_medio
sum
trB <- trH - sum
trB/trH


