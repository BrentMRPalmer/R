
x <- c(1,123,534,13,4) # Combine
y <- seq(201,250,2) # Sequence
z <- rep("Hi!", 3) # Replicate

w <- c("a", "b", "c", "d", "e")
w

w[1] # Use the square brackets to access the element you would like to access
w[2]
w[3]
w[-1] # The - means everything but that element
v <- w[-3]
w[1:3] # Can use vectors to access elements
w[3:5]
w[c(1,3,5)] 
w[c(-2,-4)]
w[-3:-5]