
#CHI QUADRATO DISTRIBUZIONE NORMALE

#divido in 5 sottoinsimi il campione
m<-mean(campione_normale)
d<-sd(campione_normale)
a<-numeric(4)

for(i in 1:4)
  a[i]<-qnorm (0.2*i,mean=m,sd=d)
a

#determiniamo elementi in ogni insieme

r<-5
nint<-numeric(r)
nint[1]<-length(which(campione_normale<a[1]))
nint[2]<-length(which((campione_normale>=a[1])&(campione_normale<a[2])))
nint[3]<-length(which((campione_normale>=a[2])&(campione_normale<a[3])))
nint[4]<-length(which((campione_normale>=a[3])&(campione_normale<a[4])))
nint[5]<-length(which(campione_normale>=a[4]))
nint

sum(nint)

#calcoliamo chi
chi2<-sum(((nint-n*0.2)/sqrt(n*0.2))^2)
chi2

k<-2
alpha<-0.05

qchisq(alpha/2,df=r-k-1)

qchisq(1-alpha/2,df=r-k-1)

