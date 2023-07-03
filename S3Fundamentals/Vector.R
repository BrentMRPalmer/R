MyFirstVector <- c(3, 45, 56, 732)
MyFirstVector
is.numeric(MyFirstVector) # True
is.integer(MyFirstVector) # False
is.double(MyFirstVector) # True - Stores these integers as doubles (with decimal)

V2 <- c(3L, 12L, 243L, 0L)
is.numeric(V2) # True
is.integer(V2) # True 
is.double(V2) # False

V3 <- c("a", "B23", "Hello")
is.character(V3) # True
is.numeric(V3) # False
is.integer(V3) # False 
is.double(V3) # False

# Cannot mix basic types in the same vector
V4 <- c("a", "B23", "Hello", 7) # This turns 7 into a character
V4

seq() # Sequence - like ':'
rep() # Replicate

seq(1,15) # Creates a sequence of numbers from 1 to 15
1:15 # Does the same thing

seq(1,15,2) # Third argument is the step
z <- seq(1,15,4)
z

d <- rep(3,50) # Creates a vector with 50 3s
d

# [1] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3
# [46] 3 3 3 3 3
# [46] means it is element 46 of the vector

rep("a", 5)

x <- c(80,20)
y <- rep(x, 10)
