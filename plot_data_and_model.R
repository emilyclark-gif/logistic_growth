#Script to plot data and model

# Read in csv
growth_data <- read.csv("experiment.csv")

# Working out the growth rate
data_subset3 <- growth_data %>% filter(t>0, t<1500) %>% mutate(N_log = log(N))

model3 <- lm(N_log ~ t, data_subset3)
summary(model3)

## This gives us a result of t estimate = 9.988e-03 which is our growth rate

# Plot our estimated parameters against the logistics curve
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 879 # estimated initial population size
  
r <- 0.009988 # estimated growth rate
  
K <- 6e+10 # estimated carrying capacity 

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() 


