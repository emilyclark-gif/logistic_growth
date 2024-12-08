## Logistic Growth Analysis

(10 points) Annotate the README.md file in your logistic_growth repo with more detailed information about the analysis. Add a section on the results and include the estimates for N0,r, and K (mention which \*.csv file you used)

In this analysis, we calculated the parameters N0 (initial population size at t=0), r (growth rate), and K (population carrying capacity) using data on a bacterial culture taken from the 'experiment.csv' file. This file contains experimental data measuring population size of an E. coli culture (italics) every 60 minutes for 4980 minutes.

# Results

We analysed what happened when k was much greater than N, and t is small (population grows exponentially)

We analysed what happened when t tended towards infinity (population size is equal to constant K )

**Initial Population Size (**$N_0$): The initial population size was estimated to be 879 individuals at time t=0 as this was the first data point value in the 'experiment.csv' file

**Growth Rate (**$r$): We fitted a linear regression model to the data with the response variable being our log-transformed population size, and the explanatory variable being time. The slope (t) represents the growth rate (r) and this produced a value of 0.009988. Therefore, the growth rate (r)=0.009988

**Carrying Capacity (**$K$): We produced a logistic growth model representing the population growth against time. The carrying capacity of the population was estimated to be 6e+10 derived from the model reaching its maximum size.

# Question 2:

(10 points) Use your estimates of N0 and r to calculate the population size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?

**Exponential population growth**

First we are going to calculate the population size at t=4980 when the population grows exponentially.

This requires the exponential growth formula : $N(t) = N_0 e^{r t}$.

We can calculate the population size below:

Where - $N_0$ = 879 - $r$ = 0.00999 - $t$ = 4980 - $k$ = 6e+10

We can substitute these values into our exponential growth formula: $N(t) = 879*e^{0.00999*4980}$ \$N(t) = 3.549982e+24

**Logistic population growth**

Second, we are going to calculate the population size at t=4980 when the population grows under logistic growth.

This requires the logistic growth equation: $N(t) <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))$

We can substitute the above paramenters into our logistic growth formula: $N(t) = (879*6e+10*exp(0.00999*4980))/(6e+10-879+879*exp(0.00999*4980))$ \$N(t) = 6e+10

Exponential growth leads to a population size of 3.55e+24 and demonstrates a population able to grow without any limitations. In comparison, logistic growth leads to a population size of 6e+10 which is much smaller as it demonstrates population growth slowing down and leveling off at carrying capacity ($k$)


