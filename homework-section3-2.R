rm(i, y, months, profit, profit_rnd, profit_tax, profit_mar, revenue, expenses)
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65,
             8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57,
              840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
months <-  c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
             "Aug", "Sep", "Oct", "Nov", "Dec")
profit <- revenue - expenses
profit_rnd <- round((profit) / 1000)
profit_tax <- round((profit_rnd) * .70)
profit_mar <- round(((profit_tax) / revenue) * 100)
y <- rep(NA, length(profit))
for (i in 1:length(profit_rnd)){
  y[i] <- c(paste(months[i], " profit is: $", profit_rnd[i], "k",
                  ", after tax is: $", profit_tax[i], "k",
                  ", margin is: ", profit_mar[i], "%",
                  sep = ""))
}
y