

library(googleVis)

myData<-data.frame(state.name=c("FI=1", "FI=2","FI=3","FI=4","FI=5","FI=6","FI=7","FI=8","FI=9","FI=10","FI=11","FI=12","FI=13","FI=14","FI=15","FI=16","FI=17","FI=18","FI=19"),
                   at =c(10,13,14,5,12,16,1,2,43,24,33,12,6,14,2,18,1,9,3))


plot(gvisGeoChart(myData, "state.name", "at", 
                  options=list(region="FI",
                  displayMode="regions",resolution="provinces"
                  , width=600, height=400)))

library (slidify) 
library (slidifyLibraries)
library(devtools)


install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')

author("mydeck")
slidify("index.Rmd")
publish(user = "talola", repo = "googleVis", host = 'github')

