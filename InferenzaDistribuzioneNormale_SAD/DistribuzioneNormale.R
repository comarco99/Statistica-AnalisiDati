
#DENSITA NORMALE VARIANDO MU

curve(dnorm(x, mean=0, sd=1), from=-6, to=6, xlab="x",ylab="f(x)",
      main="mu = -1,0,1; sigma = 1",col = "red")
curve(dnorm(x, mean=-1, sd=1), from=-6, to=6, xlab="x",ylab="f(x)",
      main="mu = -1,0,1; sigma = 1", add=TRUE, col = "blue")
curve(dnorm(x, mean=1, sd=1), from=-6, to=6, xlab="x",ylab="f(x)",
      main="mu = -1,0,1; sigma = 1", add=TRUE, col = "green")


#DENSITA NORMALE VARIANDO SIGMA

curve(dnorm(x,mean=0, sd =0.5) ,from=-4, to=4, xlab="x",
     ylab="f(x)",main="mu=0; sigma = 0.5 ,1 ,1.5 ",col = "red")
curve(dnorm(x,mean=0, sd=1) ,from=-4, to=4, xlab="x",ylab="f(x)",
      add=TRUE,col="blue")
curve(dnorm(x,mean=0, sd =1.5) ,from=-4, to=4, xlab="x",ylab="f(x)",
      add=TRUE,col="green")

#FUNZIONE DISTRIBUZIONE

curve(pnorm (x,mean=0,sd =0.5) ,from=-4, to=4, xlab="x",
      ylab=expression (P(X<=x)),main="mu=0; sigma = 0.5 ,1 ,1.5 ",lty =2)
text (-0.4,0.8, "sigma = 0.5")
curve(pnorm (x,mean=0,sd=1) ,add=TRUE,col="red")
arrows (-1,0.1,0.21,0.18, code=1, length = 0.10)
text (0.8 ,0.2 , "sigma = 1")
curve(pnorm (x,mean=0,sd =1.5) ,add =TRUE ,lty =3)
text (-2.2,0.2, "sigma = 1.5")

#SIMULAZIONE

campione_normale<-rnorm(10000, mean=1000, sd=1.5)

mu<-round(mean(campione_normale), digits=4)
mu

var<-round(var(campione_normale), digits=4)
var

sigma<-round(sd(campione_normale), digits=4)
sigma

hist(campione_normale, freq=F, xlim=c(994,1006), ylim=c(0,0.5), breaks=100, xlab="x", yla="Istogramma", main="Densità simulata N=10000")

#STIMA METODO DEI MOMENTI

stima_mu_momenti<-mean(campione_normale)
stima_mu_momenti

stima_sigma2_momenti<-(length(campione_normale)-1)*var(campione_normale)/length(campione_normale)
stima_sigma2_momenti




















