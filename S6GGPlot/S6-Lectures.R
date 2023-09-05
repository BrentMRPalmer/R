# ----------------- What is a Factor?

setwd("C:\\Season6\\R\\S6GGPlot")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)

colnames(movies) <- c("Film", "Genre", "CriticRating", 
                      "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

movies$Genre <- factor(movies$Genre)
movies$Year <- factor(movies$Year)
summary(movies)

# ----------------- Aesthetics

library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# add colour
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + 
  geom_point()

# add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=Genre)) + 
  geom_point()

# add size (better)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) + 
  geom_point()
#>>> This is #1 (we will improve it)

# ----------------- Plotting with Layers

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
p

# Points
p + geom_point()

# Lines
p + geom_line()

# Multiple Layers
p + geom_line() + geom_point()

# ----------------- Overriding Statistics

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre, size=BudgetMillions))

# Add geom layer
q + geom_point()

# Overriding Aes
# Example 1
q + geom_point(aes(size=CriticRating))

# Example 2
q + geom_point(aes(colour=BudgetMillions))

# q remains the same
q + geom_point()

# Example 3
q + geom_point(aes(x=BudgetMillions)) + 
  xlab("Budget Millions($)")

# Example 4
p + geom_line() + geom_point()
# Reduce line size
p + geom_line(size=1) + geom_point()

# ----------------- Mapping vs Setting

r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

# Add colour
#1. Mapping (what we've done so far):
r + geom_point(aes(colour=Genre))
#2. Setting
r + geom_point(colour="DarkGreen")
# ERROR:
# r + geom_point(aes(colour="DarkGreen"))

#1. Mapping
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r + geom_point(size=10)
# ERROR: 
r + geom_point(aes(size=10))

# ----------------- Histograms and Density Charts

s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth=10)

# Add colour
s + geom_histogram(binwidth=10, aes(fill=Genre))

# Add a border
s + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")

# Sometimes you may need density charts:
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre), position="stack")

# ----------------- Starting Layer Tips

t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth = 10, fill="White", colour="Blue")

# Another way
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10, fill="White", 
                   colour="Blue", aes(x=AudienceRating))

t + geom_histogram(binwidth = 10, fill="White", 
                   colour="Blue", aes(x=CriticRating))

t <- ggplot() # Skeleton plot

# ----------------- Statistical Transformations

?geom_smooth

u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u + geom_point() + geom_smooth(fill=NA)

# Box Plots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))
u + geom_boxplot()

u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()
# Tip / Hack:
u + geom_boxplot(size=1.2) + geom_jitter()
# Another way:
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5) 

z <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour=Genre))
z + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

# ----------------- Using Facets

v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")

# Facets
v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") +
  facet_grid(Genre~., scales="free")

# Scatterplots:
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre))

w + geom_point() + facet_grid(.~Year)

w + geom_point() + facet_grid(Genre~.)

w + geom_point(size=1) + facet_grid(Genre~Year)

w + geom_point(size=1) + geom_smooth() + facet_grid(Genre~Year)

w + geom_point(aes(size=BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year)

# ----------------- Coordinates

# Today:
# Limits
# Zoom

m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             size=BudgetMillions, colour=Genre))
m + geom_point()

m + geom_point() + 
  xlim(50,100) +
  ylim(50,100)

# Won't always work well
n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") +
  ylim(0,50) # This cuts off data

# Instead - zoom:
n + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black") +
  coord_cartesian(ylim=c(0,50))

# Improve
w + geom_point(size=1) + geom_smooth() + facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100))

# ----------------- Perfecting by Adding Themes

o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")
h

# Axes Labels
h + 
  xlab("Money Axis") +
  ylab("Number of Movies")

# Label Formatting
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") + 
  theme(axis.title.x=element_text(colour="DarkGreen", size=10), 
        axis.title.y=element_text(colour="Red", size=10))

# Tick Mark Formatting
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x=element_text(colour="DarkGreen", size=10), 
        axis.title.y=element_text(colour="Red", size=10),
        axis.text.x=element_text(size=15),
        axis.text.y=element_text(size=15))

# Legend Formatting
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  theme(axis.title.x=element_text(colour="DarkGreen", size=10), 
        axis.title.y=element_text(colour="Red", size=10),
        axis.text.x=element_text(size=15),
        axis.text.y=element_text(size=15),
        
        legend.title=element_text(size=15),
        legend.text=element_text(size=10),
        legend.position=c(1,1),
        legend.justification=c(1,1))

# Title Formatting
h + 
  xlab("Money Axis") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") + 
  theme(axis.title.x=element_text(colour="DarkGreen", size=10), 
        axis.title.y=element_text(colour="Red", size=10),
        axis.text.x=element_text(size=15),
        axis.text.y=element_text(size=15),
        
        legend.title=element_text(size=15),
        legend.text=element_text(size=10),
        legend.position=c(1,1),
        legend.justification=c(1,1),
        
        plot.title=element_text(colour="DarkBlue",
                                size=20,
                                family="Courier New"))
