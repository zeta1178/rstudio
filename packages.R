install.packages("ggplot2")
library(ggplot2)

remove.packages("ggplot2")

qplot(data=diamonds, carat, price, 
    colour=clarity, facets=.~clarity)

ggplot(data=diamonds, aes(x=carat, y=price, colour=clarity))+ 
    geom_point(alpha=0.1) +
    geom_smooth()
