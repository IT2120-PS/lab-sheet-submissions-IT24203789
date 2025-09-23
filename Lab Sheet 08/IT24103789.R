setwd("C:\\Users\\it24103789\\Desktop\\IT24103789")
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)

popvar<-var(Weight.kg.)

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

samplemean<-mean(s.means)
samplesd<-sd(s.means)

popmn
samplemean


samplesd

truemean=popmn/6
samplemean



