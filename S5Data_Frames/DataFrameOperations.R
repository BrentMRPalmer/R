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

# ---------------------------- Basic Operations with a Data Frame

stats[1:10,] # Subsetting
stats[3:9,]
stats[c(4,100),]

# Remember how the [] work:
stats[1,] # In data frames, it does not drop the dimension
is.data.frame(stats[1,])
stats[,1] # But this will drop a dimensions
is.data.frame(stats[,1,drop=F]) # so you need to use drop

# Multiply Columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

# Add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
tail(stats)

# Test of knowledge
stats$xyz <- 1:5 # This vector will be repeated over and over again 39 times
stats

# Remove a column
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)

stats
stats[182,]
