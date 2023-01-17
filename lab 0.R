data <- read.csv(file.choose(),header = T )
install.packages('MASS')
library(MASS) # load the library MASS
attach(Boston) # attaching the dataset
data(Boston)
?Boston # help function with "?"
head(Boston) # show the head of the dataset
dim(Boston) # dimensions of the dataset
names(Boston) # column names
str(Boston) # str function shows the structure of the dataset
nrow(Boston) # function shows the number of rows
ncol(Boston) # function shows the number of columns
summary(Boston) # summary() function shows the summary statistics
summary(Boston$crim)

install.packages("ISLR") # installing the ISLR package
library(ISLR)
data(Auto)
head(Auto)
names(Auto)
summary(Auto)
summary(Auto$mpg)
fivenum(Auto$mpg)
boxplot(Auto$mpg)
hist(Auto$mpg)
summary(Auto$horsepower)
summary(Auto$weight)
fivenum(Auto$weight)
boxplot(Auto$weight)
mean(Auto$weight)
median((Auto$weight))

head(data)
summary(data)
View(data)
hist(data$EPI)
data$CLIMATE
plot(CLIMATE~ EPI, data = data, main="Scatterplot",
     xlab="EPI ", ylab="CLIMATE", pch=19)






