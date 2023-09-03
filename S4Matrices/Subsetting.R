# Subsetting

x <- c("a", "b", "c", "d", "e")
x
x[c(1,5)]
x[1]

Games
Games[1:3,6:10]
Games[c("KobeBryant", "DwayneWade"),]
Games[,4:5]

Games[1,] # This matrix does not have row names - it is just a vector
is.matrix(Games[1,])
is.vector(Games[1,])

Games[1,5]

# When the indexing returns something that is no longer 2D, it converts
# it into a vector 

Games[1,,drop=F] # Can disable this by setting drop to false
