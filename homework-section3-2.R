rm(i, y, months, profit, profit_rnd, profit_tax, profit_mar, revenue, expenses)
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65,
             8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57,
              840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
months <-  c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
             "Aug", "Sep", "Oct", "Nov", "Dec")
profit <- revenue - expenses
profit_rnd <- round((profit))
#tax <- round(profit * 0.3, digits = 2)
profit_tax <- round((profit_rnd) * .70)
#profit_tax2 <- profit - tax
profit_mar <- round(((profit_tax) / revenue) * 100)
y <- rep(NA, length(profit))
z <- rep(NA, length(profit))
for (i in 1:length(profit_rnd)){
  y[i] <- c(paste(months[i], " profit is: $", round(profit_rnd[i] / 1000), "k",
                  ", after tax is: $", round(profit_tax[i] / 1000), "k",
                  ", margin is: ", profit_mar[i], "%",
                  sep = ""))
}
y
mean_pat <- mean(profit_tax)
good_months <- (profit_tax > mean_pat)
best_month <- profit_tax == max(profit_tax)
worst_month <- profit_tax == min(profit_tax)
#good_months
for (i in 1:length(good_months)){
  if (isTRUE(good_months[i])) {
    z[i] <- c(paste(months[i], " was a good month.", sep = ""))
  } else {
    z[i] <- c(paste(months[i], " was a bad month.", sep = ""))
  }
}
z
best_month
worst_month