library(dplyr)
library(magrittr)
EPI_data <- read.csv('C:/Users/zona1/Desktop/Data Analytics/2010EPI_data.csv',header = T )#read data 1
setwd('C:/Users/zona1/Desktop/Data Analytics')
EPI_data <- read.csv('2010EPI_data.csv',header = T)#read data 2
#by_region <- data %<% group_by(EPI_regions)

attach(EPI_data)#make it automatically refer to the data set
fix(EPI_data)#show a window where you can edit the data
tf <- is.na(EPI) #find the NA rows
E <- EPI[!tf] #filter out the NA rows

#histogram
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
lines(density(EPI,na.rm=TRUE,bw='SJ'))
rug(EPI) 
?hist

#cumulative distribution plot
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
?plot

#qq plot
par(pty="s") 
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)


?qqplot

#filtering
EPILand<-EPI[!Landlock]#filter out 'landlock'=1 values
View(EPILand)

EPISW<-EPI[!No_surface_water]
EPI_South_Asia <- EPI[EPI_regions=='South Asia']#filter out the data in south asia


ENVHEALTH
ENV_NA<- is.na(EPI) #find the NA rows
ENV <- EPI[!ENV_NA]
hist(ENV)

par(pty="s") 
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
