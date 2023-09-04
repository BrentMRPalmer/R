# Importing Data

# Method 1: Select the file manually
stats <- read.csv(file.choose())
stats

# Method 2: Set working directory and read data
setwd("C:\\Season6\\R\\S5Data_Frames")
getwd()
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")
stats
