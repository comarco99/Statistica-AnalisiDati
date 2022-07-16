
#METODO DELLA MEDIANA


matrice_distanze_quadrata<-matrice_distanze^2
metodo_mediana<-hclust(matrice_distanze_quadrata, method="median")
metodo_mediana$merge

plot(metodo_mediana, hang=-1, xlab="Metodo gerarchico agglomerativo", sub="della mediana")
axis(side=4, at=round(c(0,metodo_mediana$height),2))
rect.hclust(metodo_mediana, k=5, border="blue")
cutree(metodo_mediana, k=5, h=NULL)

#MISURA NON OMOGENEITA

numero_righe<-nrow(matrice_capacita_arrivare_fine_mese)
trH<-(numero_righe-1)*sum(apply(matrice_capacita_arrivare_fine_mese,2, var))
trH

taglio_mediana<-cutree(metodo_mediana, k=5)
taglio_mediana_list<-list(taglio_mediana)
num<-table(taglio_mediana)


agvar<-aggregate(matrice_capacita_arrivare_fine_mese, taglio_mediana_list, var)[, -1]

trH1_mediana<-(num [[1]]-1)*sum(agvar[1, ])
if(is.na(trH1_mediana))
  trH1_mediana<-0

trH2_mediana<-(num [[2]]-1)*sum(agvar[2, ])
if(is.na(trH2_mediana))
  trH2_mediana<-0

trH3_mediana<-(num [[3]]-1)*sum(agvar[3, ])
if(is.na(trH3_mediana))
  trH3_mediana<-0

trH4_mediana<-(num [[4]]-1)*sum(agvar[4, ])
if(is.na(trH4_mediana))
  trH4_mediana<-0

trH5_mediana<-(num [[5]]-1)*sum(agvar[5, ])
if(is.na(trH5_mediana))
  trH5_mediana<-0


sum <- trH1_mediana+trH2_mediana+trH3_mediana+trH4_mediana+trH5_mediana
sum
trB <- trH - sum
trB/trH


