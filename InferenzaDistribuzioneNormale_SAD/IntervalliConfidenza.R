
#INTERVALLI PER MU E SIGMA2 NOTA

alpha <-1-0.95
deviazione_standard<-1.5
n<-length(campione_normale)

#stima del limite inferiore
mean(campione_normale)-qnorm(1-alpha/2,mean=0,sd =1)*deviazione_standard/sqrt(n)

#stima del limite superiore
mean(campione_normale)+qnorm (1- alpha /2,mean=0,sd =1)*deviazione_standard/sqrt(n)





#INTERVALLI PER MU E SIGMA2 NON NOTA

alpha <-1-0.95
deviazione_standard<-sd(campione_normale)
deviazione_standard

n<-length(campione_normale)

#stima del limite inferiore
mean(campione_normale)-qt(1-alpha/2,df=n-1)*deviazione_standard/sqrt(n)

#stima del limite superiore
mean(campione_normale)+qt(1-alpha/2,df=n-1)*deviazione_standard/sqrt(n)




#INTERVALLI PER SIGMA2 CON MU NOTA

n<-length(campione_normale)
mu<-1000
alpha<-1-0.95

#stima del limite inferiore
((n-1)*var(campione_normale)+n*(mean(campione_normale)-mu)**2)/qchisq(1-alpha/2,df=n)


#stima del limite superiore
((n-1)*var(campione_normale)+n*(mean(campione_normale)-mu)**2)/qchisq(alpha/2,df=n)



#INTERVALLI PER SIGMA2 CON MU NON NOTA

n<-length(campione_normale)
alpha <-1-0.95

#stima limite inferiore
(n-1)*var(campione_normale)/qchisq(1-alpha/2,df=n -1)

#stima limite superiore
(n-1)*var(campione_normale)/qchisq(alpha/2,df=n-1)






