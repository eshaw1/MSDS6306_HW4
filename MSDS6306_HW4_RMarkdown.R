---
  title: EShawHomework4
author: "Earl Shaw"
date: "June 5, 2016"
output: html_document
---
 
```{r , include=TRUE}
knitr::opts_chunk$set(echo = TRUE,eval=TRUE)
#This is HW #4 in which we have to use the bootstrap to illustrate the Central Limit Theorem
#The Central Limit Theorem asserts that averages based on large samples have approximately normal sampling distributions, regardless of the shape of the population distribution (Ramsey, Fred L. & Schafer, Daniel W. (2013). The Statistical Sleuth. Boston, MA: Brooks/Cole Cengage Learning)

#Normal Distribution
#This section of code creates two different random samples, one with 75 observations and another with 100 observations from the normal distribution. Sample 1 has mean=10 and standard deviation (sd)=3 and assigns the mean of the sample to the variable "samp1_bar" and the sd to "samp1_sdbar". Sample 2 has mean=20 and sd=5 and assigns the mean of the sample to the variable samp2_bar and the sd to samp2_sdbar.
#Sample 1 - Normal Distribution
samp1<-rnorm(75,10,3)
samp1
samp1_bar<-mean(samp1)
samp1_bar
samp1_sdbar<-sd(samp1)
samp1_sdbar
##
#Sample 2 - Normal Distribution
samp2<-rnorm(100,20,5)
samp2
samp2_bar<-mean(samp2)
samp2_bar
samp2_sdbar<-sd(samp2)
samp2_sdbar
#
#This section creates bootstrapped samples from both initial random samples taken from the normal distribution (i.e. one with 75 observations and the other with 100 observations). The sampling process is repeated 1,000 times with replacement.
##Sample 1 - Normal Distribution
nsims<-1000
bootnorm1<-numeric(nsims)
for (i in 1:nsims) {
  temp1<-sample(samp1,75,replace=TRUE)
  bootnorm1[i]<-mean(temp1)}
##
##Sample 2 - Normal Distribution
nsims<-1000
bootnorm2<-numeric(nsims)
for (i in 1:nsims) {
  temp2<-sample(samp2,100,replace=TRUE)
  bootnorm2[i]<-mean(temp2)}
##
#This section of code creates histograms to assess normality. Curves resembling the shape of a normal distribution are anticipated, as this reflects the result of the Central Limit Theorem as defined above.
##Histogram - Sample 1 - Normal Distribution
hist(bootnorm1)
##
##Histogram - Sample 2 - Normal Distribution
hist(bootnorm2)
##
#Conclusion (Normal Distribution): The bootstrapped samples result in histograsm that resemble normally distibuted populations and thus help to demonstrate the result of the Central Limit Theorem.
##
##
#Exponential Distribution
#This section of code creates two different random samples, one with 75 observations and another with 100 observations from the expoenential distribution. Sample 1 has rate=1 (i.e. mean, 1/1) and assigns the mean of the sample to the variable samp3_bar and the sd to samp3_sdbar. Sample 2 has rate=5 (i.e. mean, 1/5) and assigns the mean of the sample to the variable samp4_bar and the sd to samp4_sdbar.
#Sample 1 - Exponential Distribution
samp3<-rexp(75,1)
samp3
samp3_bar<-mean(samp3)
samp3_bar
samp3_sdbar<-sd(samp3)
samp3_sdbar
##
#*Sample 2 - Exponential Distribution*
samp4<-rexp(100,5)
samp4
samp4_bar<-mean(samp4)
samp4_bar
samp4_sdbar<-sd(samp4)
samp4_sdbar
#This section creates bootstrapped samples from both initial random samples taken from the exponential distribution (i.e. one with 75 observations and the other with 100 observations). The sampling process is repeated 1,000 times with replacement.
##Sample 1 - Exponentional Distribution
nsims<-1000
bootexp1<-numeric(nsims)
for (i in 1:nsims) {
  temp3<-sample(samp3,75,replace=TRUE)
  bootexp1[i]<-mean(temp3)}
##
##
##Sample 2 - Exponentional Distribution
nsims<-1000
bootexp2<-numeric(nsims)
for (i in 1:nsims) {
  temp4<-sample(samp4,100,replace=TRUE)
  bootexp2[i]<-mean(temp4)}
##
#This section of code creates histograms to assess normality. Curves resembling the shape of a normal distribution are anticipated, as this reflects the result of the Central Limit Theorem as defined above.
##
##Histogram - Sample 1 - Exponential Distribution
hist(bootexp1)
##
##Histogram - Sample 2 - Exponential Distribution
hist(bootexp2)
##
#Conclusion (Exponential Distribution): The bootstrapped samples result in histograms that resemble normally distibuted populations and thus help to demonstrate the result of the Central Limit Theorem.
```

