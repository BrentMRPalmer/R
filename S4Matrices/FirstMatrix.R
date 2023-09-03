# Building a matrix

# First way to do it - use the matrix function
# matrix()
# Takes a vector and turns it into a matrix

# Second way to do it
# rbind()
# Binds the given vectors together as rows (must be the same length)

# Third way to do it
# cbind()
# Binds the given vectors together as columns (must be the same length)

# matrix()
my_data <- 1:20
my_data

A <- matrix(my_data, 4, 5)
A
A[2,3]

B <- matrix(my_data, 4, 5, byrow=T)
B
B[2,5]

# rbind()
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)
C <- rbind(r1, r2, r3)
C

# cbind()
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1, c2)
D

# Practice
data <- 30:60
E <- matrix(data, 5, 6)
E

rr1 <- 1:20
rr2 <- 21:40
rr3 <- 41:60
rr4 <- 61:80
F <- rbind(rr1, rr2, rr3, rr4)
F

cc1 <- c("Dog", "Loft")
cc2 <- c("Cat", "Bacteria")
G <- cbind(cc1, cc2)
G