# MechaCar Statistical Analysis
 
## Overview

This project involves reviewing the production data of MechCar, an Auto Dealershipfor, for insights that will help the manufacturing team.

All of the statistical analysis and visualizations is written in the R programming language.

## Resources

R-programming , tidyverse, ggplot2, Statistical Tests, Hypothesis Testing, A/B Testing

## Linear Regression to Predict MPG

For this sesction, the MechaCar_mpg.csv dataset was used. It contains miles per gallon (mpg) test results for 50 prototype MechaCars. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle as independent variables to test their influence on mpg. 

![summary lm](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/20567d42804bf394b0411b03c817bc7765f883c5/Visuals/summary_lm.png)

### Interpretation of the results

- Multiple linear regression equation is as follows: y = m1x1 + m2x2 + m3x3 + m4x4 + m5x5 + b

- Our equation for the model is mpg = (6.267e+00)vehicle.length + (1.245e-03)vehicle.weight + (6.877e-02)spoiler.angle + (3.546e+00)ground.clearance + (-3.411e+00)AWD + (-1.040e+02)


### Variables that provided a non-random amount of variance to the mpg values in the dataset:

The probability that a variable contributes a random amount of variance to the linear model is represented by the Pr(>|t|) value. According to the summary output, vehicle length and ground clearance contributed a non-random amount of variance to the linear model of mpg.

### Slope of the linear model 

The slope of the linear model is not considered to be zero as evident by the p-value that is equal to 5.35e-11, much lower than the assumed significance level of 0.05%, therefore there is sufficient evidence to reject the null hypothesis.

### How well does the model work to predict mpg of MechaCar prototypes?
  
The variance is a good metric to be used for this purpose, as it measures how far a set of numbers are spread out (from their mean value). So we can rephrase our question to be how much of the variance in mpg values is explained by the variables in the model?

The “% variance explained” is equal to the correlation coefficient R-squared.

We can consider this model to provide a strong prediction of MPG in MechaCar prototypes because it has an r-squared value of 0.71. This means that 71% of the variance in the dataset is explained by our model.

## Summary Statistics on Suspension Coils

For this section, the MechaCar Suspension_Coil.csv dataset was used. It contains the results from multiple production lots. ThE weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 

### Total Summary Table

![total_summary](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/6edc92ec02e1eef3a48d8b8e661c02dcd96cc22a/Visuals/total_summary.png)

![lot_summary](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/6edc92ec02e1eef3a48d8b8e661c02dcd96cc22a/Visuals/lot_summary.png)

As per the summary table for the suspension coil's pounds-per-inch variable, the dataset follows a normal distribution with no skewness.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

The design specs are respected for all manufacturing lots with a total variance of 76.23 psi. However, when investigating further at the lot level, Lot 1 and Lot 2 do comply with the specifications with a variance of 1.14 PSI and 10.13 psi, respectively. Whereas, Lot 3 is out of specs with a variance of 220.01 psi.

## T-Tests on Suspension Coils

In this section, the one-sample t-test was performed to determine if all manufacturing lots and each lot individually are statistically different from the hypothesized population mean of 1,500 pounds per square inch.

### T-Test all manufacturing lots against the population mean

![t test all](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/28c04e34250b231fe500da1d0ce7cb305af82bba/Visuals/t_testALL.png)

Assuming a significance level of 0.05 percent, the p-value is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we can state that the psi across all manufacturing lots is statiscally similar to the population mean of 1,500 pounds per square inch.

### T-Tests each manufacturing lot against the population mean

#### Lot 1 and 2

![lot1](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/dc5b803738cccb528b669738a1828235dfe215fd/Visuals/t_test1.png)

![lot2](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/dc5b803738cccb528b669738a1828235dfe215fd/Visuals/t_test2.png)

The p-values are above the significance level of 0.05 percent, so we cant reject the null hypothesis and conclude that the PSI across the Lot 1 is not statistically different from the population mean.

#### Lot  3

![lot3](https://github.com/MariaGarzon/MechaCar_Statistical_Analysis/blob/dc5b803738cccb528b669738a1828235dfe215fd/Visuals/t_test3.png)

Here the p-value is below the significance level, so we can conclude that the PSI is statistically different to the population mean.

## Study Design: MechaCar vs Competition

To compare the performance of the MechaCar vehicles against performance of vehicles from other manufacturers, we have to perform an statistical analysis on the following metrics: cost, city and highway fuel efficiency, horse power, maintenance cost, and safety rating.

In this case the null hypothesis would be

          Ho: each performance metrics is statistically similar between the MechaCar prototype and the vehicles from the other manufacturers.
          
To test the hypothesis, a one-way ANOVA test would be performed for each metrict to obtain their respective mean. This test is useful in this case as it compares the means of continuous numerical variables across categorical data. 

The data sources required would be from MechaCar vehicles and its competitors combined in one dataframe where each metric has its own column.
