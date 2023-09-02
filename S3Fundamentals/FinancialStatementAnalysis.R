# Scenario: You are a Data Scientist working for a 
# consulting firm. One of your colleagues from the 
# Auditing department has asked you to help them
# assess the financial statement of organization X.
# 
# You have been supplied with two vectors of data:
# monthly revenue and monthly expenses for the 
# financial year in question. Your task is to 
# calculate the following financial metrics:
#   - Profit for each month
#   - Profit after tax for each month (the tax rate is 30%)
#   - Profit margin for each month (equals to profit after tax divided by revenue)
#   - Good months (where the profit after tax was greater than the mean for the year)
#   - Bad months (where the profit after tax was less than the mean for the year)
#   - The best month (where the profit after tax was max for the year)
#   - The worst month (where the profit after tax was min for the year)

# All results need to be presented as vectors.
# 
# Results for dollar values need to be calculated with $0.01 precision, but
# need to be presented in Units of $1,000 (i.e. 1k) with no decimal points
# 
# Results for the profit margin ratio need to be presented in units of % with
# no decimal points
# 
# Note: Your colleague has warned you that it is okay for tax for any 
# give month to be negative (in accounting terms, negative tax translates
# into a deferred tax asset).

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses
profit_after_tax <- profit - (0.3 * profit)
profit_margin <- profit_after_tax / revenue
average <- mean(profit_after_tax)

best_month_val <- profit_after_tax[1]
worst_month_val <- profit_after_tax[1]
best_month <- c()
worst_month <- c()

good_months <- c()
bad_months <- c()

for(i in 1:12){
  if (profit_after_tax[i] >= average){
    good_months <- c(good_months, 1)
    bad_months <- c(bad_months, 0)
  } else {
    bad_months <- c(bad_months, 1)
    good_months <- c(good_months, 0)
  }
  
  if (profit_after_tax[i] > best_month_val){
    best_month_val = profit_after_tax[i]
  } else if (profit_after_tax[i] < worst_month_val){
    worst_month_val = profit_after_tax[i]
  }
}

for(i in 1:12){
  if(profit_after_tax[i] == best_month_val){
    best_month <- c(best_month, 1)
    worst_month <- c(worst_month, 0)
  } else if (profit_after_tax[i] == worst_month_val){
    best_month <- c(best_month, 0)
    worst_month <- c(worst_month, 1)
  } else {
    best_month <- c(best_month, 0)
    worst_month <- c(worst_month, 0)
  }
}

# Conversions
profit <- round(profit / 1000)
profit_after_tax <- round(profit_after_tax / 1000)
profit_margin <- round(profit_margin*100)

profit
profit_after_tax
profit_margin
good_months
bad_months
best_month
worst_month

# for(i in 1:12){
#   if (profit_after_tax[i] >= average){
#     good_months <- c(good_months, profit_after_tax[i])
#   } else {
#     bad_months <- c(bad_months, profit_after_tax[i])
#   }
#   
#   if (profit_after_tax[i] > best_month){
#     best_month = profit_after_tax[i]
#   } else if (profit_after_tax[i] < worst_month){
#     worst_month = profit_after_tax[i]
#   }
# }
