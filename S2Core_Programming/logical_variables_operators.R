# Logical Variables and Operators
# TRUE T
# FALSE F

# Examples
4 < 5
10 > 100
4 == 5

# 10 operators
# == (equal)
# != (not equal)
# < (less than)
# > (greater than)
# <= (less than or equal)
# >= (greater than or equal)
# ! (not)
# | (or)
# & (and)
# isTRUE(x)

result <- 4 < 5
result
typeof(result)

result2 <- !(5 > 1)
result2

result | result2
result & result2

isTRUE(result)
isTRUE(result2)
