#x <- rnorm(5)

#r specific loop

#for (i in x){
    #print(i)
#}

#convention loop
#for (j in 1:5){
    #print(x[j])
#}
rm(a,b,c,d,i,N)

N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach
c <- a * b
#de-vectorized approach
d <- rep(NA, N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}