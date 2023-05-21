# Test the Law of Large Numbers for N random normally
# distributed numbers with mean = 0, stddev - 1:

# Create an R script that will count how many of these 
# numbers fall between -1 and 1 and divide by the
# total quantity of N

# You know that E(X) = 68.2%

# Check that Mean(Xn) -> E(X) as you rerun your script 
# while increasing N

N <- as.numeric(readline(prompt = "Enter the value of N: "))

count <- 0
# Note: you can do i in rnorm(100)
# it is basically a for each loop - the vector is iterable
for(i in 1:N){
  random_num <- rnorm(1)
  count <- if (random_num <= 1 & random_num >= -1) count + 1 else count
}

mean <- count / N
mean