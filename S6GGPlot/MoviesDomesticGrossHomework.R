# Movie Domestic

# The movie reviews website was very happy with your deliverable
# for the previous assignment and now they have a new request for you.

# The previous consultant had created a chart for them which is 
# illustrated on the next slide. However, the R code used to 
# create the diagram has since been lost and cannot be recovered.
# Your task is to come up with the code that will re-create the same
# chart making it look as close as possible to the original.

# A new dataset has been supplied.

getwd()
setwd("C:\\Season6\\R\\S6GGPlot")
HWdata <- read.csv("Section6-Homework-Data.csv")
HWdata <- HWdata[HWdata$Genre == "action" | HWdata$Genre == "adventure" | 
                   HWdata$Genre == "animation" | HWdata$Genre == "comedy" |
                   HWdata$Genre == "drama", ]
HWdata <- HWdata[HWdata$Studio == "Buena Vista Studios" | HWdata$Studio == "Fox" | 
                   HWdata$Studio == "Paramount Pictures" | HWdata$Studio == "Sony" |
                   HWdata$Studio == "Universal" | HWdata$Studio == "WB",]
summary(HWdata)
library(ggplot2)

plot <- ggplot(data=HWdata, aes(x=Genre, y=Gross...US))

plot + geom_jitter(aes(size=Budget...mill., colour=Studio)) + geom_boxplot(outlier.shape = NA, alpha=0.5) +
  ylab("Gross % US") + 
  ggtitle("Domestic Gross % by Genre") + 
  theme(
    axis.title.x=element_text(colour="Blue"),
    axis.title.y=element_text(colour="Blue")
  )




