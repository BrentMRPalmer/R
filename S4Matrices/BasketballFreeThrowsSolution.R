# Basketball Free Throws Solution

myplot <- function(data=Salary, rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot(FreeThrows)
myplot(FreeThrowAttempts)

#1. Free Throw Attempts / Game
myplot(FreeThrowAttempts/Games)

#2. Free Throw Accuracy
myplot(FreeThrows/FreeThrowAttempts)

#3. Player Style Patterns Excluding Free Throws
myplot((Points - FreeThrows) / FieldGoals)