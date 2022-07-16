#generiamo un secondo campione normale

campione_normale2<-rnorm(9000, mean = 980, sd = 2)

#CONFRONO TRA POPOLAZIONI NORMALI CON VARIANZE NOTE

alpha<-1-0.95

n1<-length(campione_normale)
n2<-length(campione_normale2)

m1<-mean(campione_normale)
m2<-mean(campione_normale2)

sigma1<-2.25
sigma2<-4

#stima del limite inferiore
m1-m2-qnorm(1-alpha/2,mean=0, sd=1)*sqrt(sigma1^2/n1+sigma2^2/n2)

#stima del limite superiore
m1-m2+qnorm(1-alpha/2,mean=0, sd=1)*sqrt(sigma1^2/n1+sigma2^2/n2)




#CONFRONO TRA POPOLAZIONI NORMALI CON VARIANZE NON NOTE

alpha<-1-0.95

n1<-length(campione_normale)
n2<-length(campione_normale2)

m1<-mean(campione_normale)
m2<-mean(campione_normale2)

sd1<-sd(campione_normale)
sd2<-sd(campione_normale2)

#stima del limite inferiore
m1-m2-qnorm(1-alpha/2,mean=0, sd=1)*sqrt(sd1^2/n1+sd2^2/n2)

#stima del limite superiore
m1-m2+qnorm(1-alpha/2,mean=0, sd=1)*sqrt(sd1^2/n1+sd2^2/n2)
