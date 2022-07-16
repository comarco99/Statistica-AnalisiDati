#-----------------------------------------------
#VERIFICA IPOTESI MU CON VARIANZA NOTA

#IPOTESI BILATERALE

alpha<-0.05
mu0<-999.98
sigma<-2.27

qnorm(1-alpha/2,mean=0,sd=1)

n<-length(campione_normale)
meancamp<-mean(campione_normale)
z_os<-(meancamp-mu0)/(sigma/sqrt(n))
z_os

p_value<-2*(1-pnorm(z_os, mean=0, sd=1))
p_value

#IPOTESI UNILATERALE DX
alpha<-0.05
mu0<-999.98
sigma<-2.27

qnorm(alpha/2,mean=0,sd=1)

n<-length(campione_normale)
meancamp<-mean(campione_normale)
z_os<-(meancamp-mu0)/(sigma/sqrt(n))
z_os

p_value<-pnorm(z_os, mean=0, sd=1)
p_value


#IPOTESI UNILATERALE SX
alpha<-0.05
mu0<-999.98
sigma<-2.27

qnorm(1-alpha/2,mean=0,sd=1)

n<-length(campione_normale)
meancamp<-mean(campione_normale)
z_os<-(meancamp-mu0)/(sigma/sqrt(n))
z_os

p_value<-1-pnorm(z_os, mean=0, sd=1)
p_value

#-----------------------------------------------------

#VERIFICA IPOTESI MU CON VARIANZA NON NOTA

#IPOTESI BILATERALE

alpha<-0.01
mu0<-999.98
n<-length(campione_normale)
qt(1-alpha/2, df=n-1)

meancamp<-mean(campione_normale)
devcamp<-sd(campione_normale)
t_os<-(meancamp-mu0)/(devcamp/sqrt(n))
t_os

pvalue<-2*(1-pt(t_os, df=n-1))
pvalue

#IPOTESI UNILATERALE DX

alpha <- 0.05
mu0<-999.98
n<-length(campione_normale)
qt ( alpha, df=n-1)

meancamp<-mean(campione_normale)
devcamp<-sd(campione_normale)
t_os<-(meancamp-mu0)/(devcamp/sqrt(n))
t_os

pvalue<-pt(t_os, df=n-1)
pvalue

#IPOTESI UNILATERALE SX
alpha<-0.01
mu0<-999.98
n<-length(campione_normale)
qt(1-alpha, df=n-1)

meancamp<-mean(campione_normale)
devcamp<-sd(campione_normale)
t_os<-(meancamp-mu0)/(devcamp/sqrt(n))
t_os

pvalue<-1-pt(t_os,df=n-1)
pvalue




#-----------------------------------------------------

#VERIFICA IPOTESI SGIMA CON MU NOTO

#IPOTESI BILATERALE

alpha<-0.05
mu<-999.98
sigma02<-var(campione_normale)
n<-length(campione_normale)
medcamp<-mean(campione_normale)
varcamp<-var(campione_normale)

qchisq(alpha/2, df=n)

qchisq(1-alpha/2, df= n)

(n-1)*varcamp/sigma02+n*(medcamp-mu)**2/sigma02

#-----------------------------------------------------

#VERIFICA IPOTESI SGIMA CON MU NON NOTO

#IPOTESI BILATERALE

alpha<-0.05
sigma02<-2.5
n<-length(campione_normale)
varcamp<-var(campione_normale)

qchisq(alpha/2,df=n-1)

qchisq(1-alpha/2,df=n-1)

(n-1)*varcamp/sigma02


#IPOTESI UNILATERALE DX

alpha<-0.05
sigma02<-2.5
n<-length(campione_normale)
varcamp<-var(campione_normale)

qchisq(alpha,df=n-1)

(n-1)*varcamp/sigma02

#IPOTESI UNILATERALE SX

alpha<-0.05
sigma02<-2.5
n<-length(campione_normale)
varcamp<-var(campione_normale)

qchisq(1-alpha,df=n-1)

(n-1)*varcamp/sigma02


