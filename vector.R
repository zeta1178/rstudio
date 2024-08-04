
MyFirstVector <- c(1,2,3)
print(MyFirstVector)
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)
v2 <- c(4L, 5L, 6L)
is.numeric(v2)

v3 <- c("a","b23","c")
is.character(v3)

seq(1, 15)
1:15
rep(3,3)
rep("a",3)
x <- c(80,20)
rep(x,3)


w <- c("a","b","c","d","e")
v <- w[-3]
v
w[1:3]
w
