# my first github script
library(renv)
## renv::init()  ## only once; create lock file in respo
renv::restore() ## restore the versions of the packages used to develop this project
# remember to use pull in Git tab to get changes (newest versions of files) from github
#load libraries
##renv::snapshot() # only once to update libraries

library(tidyverse)
##install.packages("tidyverse",dependencies = T,repos="http://cran.us.r-project.org")
x<- c(1,2,3,4,5)
y<- c(1,4,3,6,9)
data<-data.frame(x,y)
data

fig01<- data |> ggplot(aes(x=x,y=y)) + 
    geom_point() + 
    geom_smooth(method="lm")
ggsave("./Figures/fig01.png", width=1920, height=1068, units="px")
