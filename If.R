rm(answer, x)
x <- rnorm(1)
if (x > 1) {
  answer <- "greater than 1"
}else if (x >= -1) {
  answer <- "Between -1 and 1"
}else {
  answer <- "less than -1"
}