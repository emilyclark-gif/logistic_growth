#Script to plot data and model

growth_data <- read.csv("experiment.csv")

## working out the growth rate
data_subset3 <- growth_data %>% filter(t>0, t<1500) %>% mutate(N_log = log(N))

model3 <- lm(N_log ~ t, data_subset3)
summary(model3)

## gives us a result of t estimate = 9.988e-03 which is our growth rate

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 879 #
  
r <- 0.009988 #
  
K <- 6e+10 #

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


