# You have been supplied data for two more additional in-game statistics
# - Free throws
# - Free throw attempts

# You need to create three plots that portray the following insights:
# - Free throw attempts per game
# - Accuracy of free throws
# - Player playing style (2 vs 3 points preference) excluding free throws

# * Each free throw is worth 1 point

# The data has been supplied in the form of vectors. You will
# have to create the two matrices before you proceed with
# the analysis

myplot <- function(data=Salary, rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

# Free Throw Attempts per game
myplot(FreeThrowAttempts/Games)

# Accuracy of Free Throws
myplot(FreeThrows/FreeThrowAttempts)

# Player playing style (2 vs 3 points preference) excluding free throws 
myplot((Points - FreeThrows) / FieldGoals)
