library("lattice")
attach(WC_AT)
dotplot(AT,main="Dot Plot of AT",col="dodgerblue4")
dotplot(waist,main="Dot Plot of Waist",col="dodgerblue4")
boxplot(AT,col="dodgerblue4")
boxplot(Waist,col="dodgerblue4")
#model building
reg.model<-lm(AT~Waist)
summary(reg.model)
pred<-predict(reg.model,newdata=data.frame(Waist=c(76.85,82)))
pred
