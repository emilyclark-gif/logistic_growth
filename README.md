# Logistic Growth Analysis

## Question 1:

*Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for* $N_0$*,* $r$ *and* $K$ *(mention which \*.csv file you used)*

In this analysis, we used the `experiment.csv` file containing experimental data on an *Escherichia coli* bacterium culture. It contains measurements of the population size of the culture every 60 minutes for 4980 minutes in the test tube.

The population size initially increases rapidly due to a high availability of resources. However, as the resources start decreasing, the growth rate decreases causing the population size to stop increasing as rapidly as it reaches its maximum capacity.

We calculated the below parameters from this data:

-   $N_0$ = initial population size at time *t=0*
-   $r$ = growth rate
-   $K$ = population carrying capacity

### Results

We began by analysing what happens to the population size when $k$ is much greater than $N$ and $t$ is small. This resulted in **exponential** **population growth**.

We then analysed what happens to the population size when $t$ tends towards infinity. This resulted in a population reaching its maximum capacity and is equal to **constant** ***K***.

Next, we wanted to estimate the $N_0$, $r$ and $K$ parameters.

**Initial Population Size (**$N_0$**):**

$N_0$ = 897

The initial population size was estimated to be 879 individuals at time t=0. This was taken from the first data point value in the `experiment.csv` file,

**Growth Rate (**$r$**):**

$r$ = 0.009988

We fitted a linear regression model to the data where:

-   the response variable = log-transformed population size
-   explanatory variable = time

In this calculation, the slope represents the growth rate (r). This produced a value of 0.009988.

**Carrying Capacity (**$K$**):**

$K$ = 6e+10

We produced a logistic growth model representing the population growth against time. The carrying capacity of the population was estimated to be 6e+10 derived from the model graph reaching its maximum size.

## Question 2:

*Use your estimates of N_0 and r to calculate the population size at t = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth?*

**Exponential population growth**

First we are going to calculate the population size at t=4980 when the population grows **exponentially**.

This requires the exponential growth formula : $N(t) = N_0 e^{r t}$.

We can calculate the population size below:

Where

-   $N_0$ = 879

-   $r$ = 0.00999

-   $t$ = 4980

-   $K$ = 6e+10

We can substitute these values into our exponential growth formula:

``` math
\begin{equation}
N(t) = 879e^{0.00999*4980}
\end{equation}
```

``` math
\begin{equation}
N(t) = 3.549982e+24
\end{equation}
```

``` math
\begin{equation}
N(t) = 3.55e + 24 (rounded)
\end{equation}
```

**Logistic population growth**

Second, we are going to calculate the population size at t=4980 when the population grows under **logistic growth**.

This requires the logistic growth equation:

``` math
\begin{equation}
N(t) = \frac{K N_0 e^{rt}}{K-N_0+N_0 e^{rt}}
\end{equation}
```

We can substitute the above parameters into our logistic growth formula:

``` math
\begin{equation}
N(t) = \frac{6e+10*879*e^{0.009988*4980}}{6e+10-879+879*e^{0.009988*4980}}
\end{equation}
```

This gives a result of:

``` math
\begin{equation}
N(t) = 6e+10
\end{equation}
```

In this case, t tends to infinity and so we can also use a simplified logistic growth model to calculate this as shown below: 

``` math
\begin{equation}
\lim\limits_{t \to \infty} N(t) = K
\end{equation}
```

and so: 

``` math
\begin{equation}
\lim\limits_{t \to \infty} N(t) = 6e+10
\end{equation}
```


Exponential growth leads to a population size of **3.55e+24.** This demonstrates a population able to grow without any limitations on resources. In comparison, logistic growth leads to a population size of **6e+10** which is much smaller. This demonstrates population growth slowing down and reaching its carrying capacity ($k$) due to limited resources.

## Question 3:

*Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the README.md file so it can be viewed in the repo homepage.*

The graph below shows the exponential growth curve compared to the logistic growth curve using our estimated parameters. I have applied a logarithmic transformation to the population size data to more clearly represent the data and differences in patterns.

The R code can be found here in my  [GrowthComparison.R](https://github.com/username123create/logistic_growth/blob/main/GrowthComparison.R).
<p align="center">

<img src="https://github.com/username123create/logistic_growth/blob/dev/images/GrowthComparisonPlot.png" width="600" height="500"/>

</p>
