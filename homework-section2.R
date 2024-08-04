
rm(n_var)
rm(counter)

n_var <- readline(prompt = "Enter any number : ")
n_var <- as.integer(n_var)
counter <- 0
for (x in rnorm(n_var)){
  if (x < 1 && x > -1) {
    counter <- counter + 1
  }
}
answer <- ((counter / n_var) * 100)
print(answer)