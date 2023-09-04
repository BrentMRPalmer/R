setwd("C:\\Season6\\R\\S5Data_Frames")
stats <- read.csv("P2-Demographic-Data.csv")
stats

nrow(stats)
ncol(stats)
head(stats, n=1)
tail(stats)
str(stats) # str() stands for structure
summary(stats)

# ----------------- Using the $ Sign
stats
head(stats)
stats[3,3]
stats[3, "Birth.rate"]
# $ is another way to access data
stats$Internet.users # Returns a vector of the column data
stats$Internet.users[2]
stats[,"Internet.users"] # This does the same thing
levels(factor(stats$Income.Group))

