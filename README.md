# MechaCar_Statistical_Analysis
Module 15: R and Statistics


In this project we will be working with Jeremy, a Data Analyst at AutosRU to do a retrospect analysis of historical data. We will be using logical verification of current automotive specifications and study design of upcoming product testing. We will be applying statistical testing, using the R programing language, to provide a summary statistic for different variables. This will be accomplished through visualization of different data sets and an interpretation of statistical test results. Our analysis will provide an insight on how to improve the performance of the vehicles at AutosRU.    


## Linear Regression to Predict MPG

Initially, we will determine which variables and coefficients provide a non-random amount of variance to the mpg values in the dataset. The dataset that will be used is the MechaCar, which contains the length, weight, spoiler angle, ground clearance, AWD and mpg of 50 vehicles.  
The regression formula of the variables and coefficients of dataset is as follow:

mpg = 6.27vehicle_length + .001vehicle_weight + .07spoiler_angle + 3.55ground_clearance - 3.41AWD -.01

![Summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/3d033ed63a58b66612f1c6d6e2f8f26aee6b6be8/images/Summary.png)

We can observe that the vehicle weight, spoiler angle and AWD provided a non-random amount of variance to the mpg values. Meanwhile the given the Pr(>|t|)show that the vehicle length and ground clearance’s coefficients each contribute to a random amount of variance to the multi-linear model. In this case the given p-value of 5.35e-11 is less than 0.05 therefore, the slope of the model is not considered to be zero. 

Given our R-squared of 71.5% we can determine that the model predicts the mpg of MechaCar prototypes effectively, however it leaves a little less than ~30% to random factors. This model would not be safe, but it does provide an insight in the impact of the given variables. 


## Summary Statistics on Suspension Coils 

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. However, the current manufacturing data for lot 3 does exceed this design specification. Meanwhile the manufacturing lots for 1 and 2 remind below 100 pounds. 

![suspention_coils_total_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Suspention_Coils_total_summary_.png)
![Lot1_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Lot1_summary.png)
![Lot2_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Lot2_summary.png)
![Lot3_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Lot3_summary.png)

## Deliverable 3: T-Test on Suspension Coils

When we write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch, we make the following findings. 

One Sample t-test

data:  Suspension_Coil_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78

Next, when we create three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch, we find that:

![t-test_on_lot1]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/t-test_on_Lot1.png)

![t-test_on_lot2]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/t-test_on_Lot2.png)

![t-test_on_lot3]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/t-test_on_Lot3.png)

Based on our results, the p-value for the Suspension Coil 0.06 when compared to the p-value of Lot1 of 1 and Lot2 of 0.61 we can determine that these lots are not statistically different from the population mean. However, Lot3 has a p-value of 0.04 which shows that the manufacturing lost is statistically different from the mean. 

 


