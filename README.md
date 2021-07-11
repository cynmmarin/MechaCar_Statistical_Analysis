# MechaCar_Statistical_Analysis
Module 15: R and Statistics


In this project we will be working with Jeremy, a Data Analyst at AutosRU to do a retrospect analysis of historical data. We will be using logical verification of current automotive specifications and study design of upcoming product testing. We will be applying statistical testing, using the R programing language, to provide a summary statistic for different variables. This will be accomplished through visualization of different data sets and an interpretation of statistical test results. Our analysis will provide an insight on how to improve the performance of the vehicles at AutosRU.    


## Linear Regression to Predict MPG

Initially, we will determine which variables and coefficients provide a non-random amount of variance to the mpg values in the dataset. The dataset that will be used is the MechaCar, which contains the length, weight, spoiler angle, ground clearance, all-wheel drive (AWD) and miles per gallon (mpg) of 50 vehicles.  
The regression formula of the variables and coefficients of dataset is as follow:

mpg = 6.27vehicle_length + .001vehicle_weight + .07spoiler_angle + 3.55ground_clearance - 3.41AWD -.01

![Summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/3d033ed63a58b66612f1c6d6e2f8f26aee6b6be8/images/Summary.png)

We can observe that the vehicle weight, spoiler angle and AWD provided a non-random amount of variance to the mpg values. Meanwhile the given the Pr(>|t|)show that the vehicle length and ground clearance’s coefficients each contribute to a random amount of variance to the multi-linear model. In this case the given p-value of 5.35e-11 is less than 0.05 therefore, the slope of the model is not considered to be zero. 

Given our R-squared of 71.5% we can determine that the model predicts the mpg of MechaCar prototypes effectively, however it leaves a little less than ~30% to random factors. This model would not be safe, but it does provide an insight in the impact of the given variables. 

Overall, MechaCar data has been provided, lack the ability to properly complete an analysis on the variables that alter the mpg. A recommendation would be to obtain information about the mass and frontal area, these variables have a greater impact on the performance of the mpg and thus can provide a more accurate representation of the variables that make a significant impact on the vehicle’s performance.
 

## Summary Statistics on Suspension Coils 

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. However, the current manufacturing data for lot 3 does exceed this design specification. Meanwhile the manufacturing lots for 1 and 2 remind below 100 pounds. A reason for this can be that the vehicles in lot 3 are heavier than those on lot 1 and 2, therefore exceeding the design specification. It is recommended that the vehicles on lot 3, get further evaluated and re-designed to meet expectations. 

![suspention_coils_total_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Suspention_Coils_total_summary_.png)
![Lot1_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Lot1_summary.png)
![Lot2_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Lot2_summary.png)
![Lot3_summary]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/Lot3_summary.png)

## T-Test on Suspension Coils

When we write an RScript using the t.test() function to determine if the spring rate across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch, we see that the sample mean is 1498.78. The sample mean is not statistically different from the population mean. 

One Sample t-test

data:  Suspension_Coil_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78

Next, when we create three more RScripts using the t.test() function and its subset() argument to determine if the spring rate for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch, we find that:

![t-test_on_lot1]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/t-test_on_Lot1.png)

![t-test_on_lot2]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/t-test_on_Lot2.png)

![t-test_on_lot3]( https://github.com/cynmmarin/MechaCar_Statistical_Analysis/blob/4bda469ed216ccad0337c057a6d41f7d694916f2/images/t-test_on_Lot3.png)

Based on our results, the p-value for the Suspension Coil 0.06 when compared to the p-value of lot 1 of 1 and lot 2 of 0.61 we can determine that these lots are not statistically different from the population mean. However, lot 3 has a p-value of 0.04 which shows that the manufacturing lost is statistically different from the mean. These findings can potentially align with our initial assumption that the vehicles on lot 3 are heavier than those on lot 1 and 2. This brings into play a new possibility, that is that the underbody treatment varies for these vehicles. If a significant number of vehicles, are heavy and closer to the ground than those in the other lots we can see how the mean suspension coil would differ. In other words, there is an error in manufacturing and the vehicles are not made as designed. 

## Study Design: MechCar vs Competition

For MechaCar to have a higher performance against their competition, it would be recommended they focused on doing a deeper analysis of their present line. In order to better understand how to produce a vehicle that is efficient in providing the most miles per gallon, we would need to test for mass and underbody treatment. If the new data is provided, we take out the all-wheel drive, and complete the new linear regression:

mpg = 6.27vehicle_length + .001vehicle_weight + .07spoiler_angle + 3.55ground_clearance +/- mass +/-underbody treatment -b
  
We would use a multi-regression would help us determine the impact that mass and underbody treatment have on the miles per gallon or if there in to change at all. Introducing these new variables may help MechaCar increase their competitive advantage in the automobile industry. 


