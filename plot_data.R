#Script to plot the logistic growth data

#Read in csv
growth_data <- read.csv("experiment.csv")

# Install. packages
install.packages("ggplot2")
library(ggplot2)

# Plot logistic growth curve
LogisticGrowthPlot <- ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()
LogisticGrowthPlot

ggsave("LogisticGrowthPlot.png", width = 8, height = 5)


# Plot logistic growth curve with log transformed population size
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')
