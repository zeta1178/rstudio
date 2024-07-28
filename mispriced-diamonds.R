## Text Here

#mydata <- read.csv(file.choose())
mydata <- read.csv("~/git/rstudio/P2-Mispriced-Diamonds.csv")

#install.packages("httpgd")
#install.packages("languageserver")
install.packages("ggplot2")
library(datasets)
library(ggplot2)
library(ggplot2.utils)
library(graphics)
library(grDevices)

ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour=clarity)) + 
    geom_point(alpha=0.1) +
    geom_smooth()
