# Import the data
getwd()
setwd("C:\\Season6\\R\\S6GGPlot")
getwd()

mov <- read.csv("Section6-Homework-Data.csv")

# Data exploration
head(mov)
summary(mov)
str(mov)

# Activate ggplot2
# install.packages("ggplot2")
library(ggplot2)

# Cool insight:
ggplot(data=mov, aes(x=Day.of.Week)) + geom_bar()

# Filter I for the data frame
filt <- mov$Genre == "action" | mov$Genre == "adventure" | 
  mov$Genre == "animation" | mov$Genre == "comedy" | mov$Genre == "drama"

# Filter II for the data frame
filt2 <- mov$Studio %in% c("Buena Vista Studios", "Fox", "WB", "Universal", "Sony", "Paramount Pictures")

mov2 <- mov[filt & filt2,]

# Prepare the plot's data and aes layers:
p <- ggplot(data=mov2, aes(x=Genre, y=Gross...US))

# Add geometries
q <- p + 
  geom_jitter(aes(size=Budget...mill., colour=Studio)) +
  geom_boxplot(alpha=0.7, outlier.colour=NA)

# Non-data ink
q <- q + 
  xlab("Genre") +
  ylab("Gross % US") + 
  ggtitle("Domestic Gross % by Genre")

# Theme
q <- q +
  theme(
    axis.title.x = element_text(colour="Blue", size=15),
    axis.title.y = element_text(colour="Blue", size=15),
    axis.text.x = element_text(size=10),
    axis.text.y = element_text(size=15),
    
    plot.title = element_text(size=20),
    
    legend.title = element_text(size=15),
    legend.text = element_text(size=15),
    
    text = element_text(family="Comic Sans MS")
  )

# Final touch
q$labels$size <- "Budget $M"
q





