setwd("C:\\Season6\\R\\S5Data_Frames")
stats <- read.csv("P2-Demographic-Data.csv")
stats
nrow(stats)
ncol(stats)
head(stats, n=1)
tail(stats)
str(stats)
summary(stats)
stats
head(stats)
stats[3,3]
stats[3, "Birth.rate"]
stats$Internet.users 
stats$Internet.users[2]
stats[,"Internet.users"] 
levels(factor(stats$Income.Group))
stats[1:10,]
stats[3:9,]
stats[c(4,100),]
stats[1,]
is.data.frame(stats[1,])
stats[,1]
is.data.frame(stats[,1,drop=F])
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
tail(stats)
stats$xyz <- 1:5
stats
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)
stats
stats[182,]
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]
stats[stats$Birth.rate > 40,]
stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
stats[stats$Income.Group == "High income",]
levels(factor(stats$Income.Group))
stats[stats$Country.Name == "Malta",]
install.packages("ggplot2")
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(1), colour=I("brown"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")

# ---------------------------- Visualization with Qplot Part 1
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, colour=I("red"), size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate, colour=Income.Group, size=I(4))
