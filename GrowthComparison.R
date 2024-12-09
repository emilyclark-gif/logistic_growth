# R script comparing exponential and logistic growth curves 

# Parameters for the models 

N0 <- 879     #Initial population size
r <- 0.00999  # Growth rate 
K <- 6e+10    # Carrying capacity 

time <- seq(0, 4980, by = 10)

#Exponential growth model 
Exponential <- N0*exp(r*time)

# Logistic growth model 
Logistic <- N0*K*exp(r*time)/(K-N0+N0*exp(r*time))

# Create a data frame 
GrowthComparison <- data.frame(
  Time = rep(time, 2),
  Population = c(Exponential, Logistic), 
  Model = rep(c("Exponential", "Logistic"), each = length(time))
)

# Plot using ggplot2

GrowthComparisonPlot <- ggplot(GrowthComparison, aes(x = Time, y = Population, color = Model)) +
  geom_line() +
  xlab("Time (min)") + 
  ylab("Population size") + 
  labs(title = "Exponential vs Logistic Growth Rate") +
  scale_y_continuous(trans = 'log10') +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 12, face = "bold"),
    axis.title.x = element_text(size = 10),
    axis.title.y = element_text(size = 10)
  )

GrowthComparisonPlot

#Save the plot 

ggsave("images/GrowthComparisonPlot.png", width = 8, height = 5)

