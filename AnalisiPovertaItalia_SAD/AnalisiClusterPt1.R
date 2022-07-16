#CLUSTER

#MATRICE DELLE DISTANZE

matrice_distanze<-dist(matrice_capacita_arrivare_fine_mese, method = "euclidean", diag=TRUE, upper =FALSE)

#METODO DEL LEGAME SINGOLO

legame_singolo<-hclust(matrice_distanze,method="single")

plot(legame_singolo, hang=-1, xlab="Metodo gerarchico agglomerativo", sub="del legame singolo")
axis(side=4, at=round(c(0,legame_singolo$height),2))
abline(h=1.2, lty=2, col="red")


rect.hclust(legame_singolo, k=5, border="blue")

cutree(legame_singolo, k=5, h=NULL)


#INDICI LEGAME SINGOLO

taglio_singolo<-cutree(legame_singolo, k=5)
taglio_singolo_list<-list(taglio_singolo)
aggregate(matrice_capacita_arrivare_fine_mese, taglio_singolo_list, mean)

aggregate(matrice_capacita_arrivare_fine_mese, taglio_singolo_list, var)

aggregate(matrice_capacita_arrivare_fine_mese, taglio_singolo_list, sd)


#MISURA NON OMEGENEITA STATISTICA

numero_righe<-nrow(matrice_capacita_arrivare_fine_mese)
trH<-(numero_righe-1)*sum(apply(matrice_capacita_arrivare_fine_mese,2, var))
trH

#MISURA NON OMOGENEITA TOTALE

taglio_singolo<-cutree(legame_singolo, k=5, h=NULL)
num<-table(taglio_singolo)
taglio_singolo_list<-list(taglio_singolo)

agvar<-aggregate(matrice_capacita_arrivare_fine_mese, taglio_singolo_list, var)[, -1]

trH1_singolo<-(num [[1]]-1)*sum(agvar[1, ])
if(is.na(trH1_singolo))
  trH1_singolo<-0

trH2_singolo<-(num [[2]]-1)*sum(agvar[2, ])
if(is.na(trH12_singolo))
  trH2_singolo<-0

trH3_singolo<-(num [[3]]-1)*sum(agvar[3, ])
if(is.na(trH3_singolo))
  trH3_singolo<-0

trH4_singolo<-(num [[4]]-1)*sum(agvar[4, ])
if(is.na(trH4_singolo))
  trH4_singolo<-0

trH5_singolo<-(num [[5]]-1)*sum(agvar[5, ])
if(is.na(trH5_singolo))
  trH5_singolo<-0


sum <- trH1_singolo + trH2_singolo +trH3_singolo+trH4_singolo+trH5_singolo 
sum
trB <- trH - sum
trB/trH

