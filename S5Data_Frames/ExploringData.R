# Exploring Data
setwd("C:\\Season6\\R\\S5Data_Frames")
stats <- read.csv("P2-Demographic-Data.csv")
stats

nrow(stats)
ncol(stats)
head(stats, n=1)
tail(stats)
str(stats) # str() stands for structure
summary(stats)
