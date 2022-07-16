
#MEDIA CAMPIONARIA

media_grande_difficolta<-mean(grande_difficolta)
media_grande_difficolta

media_media_difficolta<-mean(media_difficolta)
media_media_difficolta

media_poca_difficolta<-mean(poca_difficolta)
media_poca_difficolta

media_senza_difficolta<-mean(molta_facilita)
media_senza_difficolta


#MEDIANA CAMPIONARIA

mediana_grande_difficolta<-median(grande_difficolta)
mediana_grande_difficolta

mediana_media_difficolta<-median(media_difficolta)
mediana_media_difficolta

mediana_poca_difficolta<-median(poca_difficolta)
mediana_poca_difficolta

mediana_senza_difficolta<-median(molta_facilita)
mediana_senza_difficolta


#QUANTILI

quantile(grande_difficolta, type=7)#defualt
quantile(grande_difficolta, type=2)
quantile(grande_difficolta, type=1)



#VARIANZA

var(grande_difficolta)

var(media_difficolta)

var(poca_difficolta)

var(molta_facilita)



#DEVIAZIONE STANDARD

sd(grande_difficolta)

sd(media_difficolta)

sd(poca_difficolta)

sd(molta_facilita)


#COEFFICIENTE DI VARIAZIONE

cv<-function(x){ 
  sd(x)/abs(mean(x))
}

cv(grande_difficolta)

cv(media_difficolta)

cv(poca_difficolta)

cv(molta_facilita)

#SKEWNESS

skw <-function (x){
  n<-length (x)
  m2 <-(n -1)*var(x)/n
  m3 <- (sum( (x-mean(x))^3))/n
  m3/(m2 ^1.5)
}

skw(grande_difficolta)

skw(media_difficolta)

skw(poca_difficolta)

skw(molta_facilita)


#CURTOSI

curt<-function(x){
    n<-length(x)
    m2<-(n-1)*var(x)/n
    m4<-(sum((x-mean(x))^4))/n
    m4/(m2^2)-3
}

curt(grande_difficolta)

curt(media_difficolta)

curt(poca_difficolta)

curt(molta_facilita)

