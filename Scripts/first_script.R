# my first github script
library(renv)
## renv::init()  ## only once; create lock file in respo
renv::restore() ## restore the versions of the packages used to develop this project

x<- c(1,2,3,4,5)
y<- c(1,4,3,6,9)
data<-data.frame(x,y)
data

