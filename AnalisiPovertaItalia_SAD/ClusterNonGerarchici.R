
#K-MEANS

kmeans<-kmeans(matrice_capacita_arrivare_fine_mese, centers=4, iter.max = 20, nstart=10)
kmeans

kmeans$betweenss/kmeans$totss