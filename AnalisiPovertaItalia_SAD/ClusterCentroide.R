
#METODO DEL CENTROIDE 

matrice_distanze_quadrata<-matrice_distanze^2
metodo_centroide<-hclust(matrice_distanze_quadrata, method="centroid")
metodo_centroide$merge

plot(metodo_centroide, hang=-1, xlab="Metodo gerarchico agglomerativo", sub="del centroide")
axis(side=4, at=round(c(0,metodo_centroide$height),2))
rect.hclust(metodo_centroide, k=5, border="blue")
cutree(metodo_centroide, k=5, h=NULL)


#MISURA NON OMOGENEITA

numero_righe<-nrow(matrice_capacita_arrivare_fine_mese)
trH<-(numero_righe-1)*sum(apply(matrice_capacita_arrivare_fine_mese,2, var))
trH

taglio_centroide<-cutree(metodo_centroide, k=5)
taglio_centroide_list<-list(taglio_centroide)
num<-table(taglio_centroide)


agvar<-aggregate(matrice_capacita_arrivare_fine_mese, taglio_centroide_list, var)[, -1]

trH1_centroide<-(num [[1]]-1)*sum(agvar[1, ])
if(is.na(trH1_centroide))
  trH1_centroide<-0

trH2_centroide<-(num [[2]]-1)*sum(agvar[2, ])
if(is.na(trH2_centroide))
  trH2_centroide<-0

trH3_centroide<-(num [[3]]-1)*sum(agvar[3, ])
if(is.na(trH3_centroide))
  trH3_centroide<-0

trH4_centroide<-(num [[4]]-1)*sum(agvar[4, ])
if(is.na(trH4_centroide))
  trH4_centroide<-0

trH5_centroide<-(num [[5]]-1)*sum(agvar[5, ])
if(is.na(trH5_centroide))
  trH5_centroide<-0


sum <- trH1_centroide+trH2_centroide+trH3_centroide+trH4_centroide+trH5_centroide
sum
trB <- trH - sum
trB/trH


