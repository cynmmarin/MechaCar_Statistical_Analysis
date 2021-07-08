# MechaCar_Statistical_Analysis

# Deliverable 1: Linear Regression to Predict MPG

  # 3)-Use the library() function to load the dplyr package.
  library(dplyr)

  # 4)-Import and read in the MechaCar_mpg.csv file as a dataframe.
  MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
  
  # 5)-Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
  # Perform multiple linear regression analysis to identify which variables in the dataset    predict the mpg of MechaCar prototypes
  # Generate multiple linear regression model 
  lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)
  
  # Formula
  # mpg = 6.27vehicle_length + .001vehicle_weight + .07spoiler_angle + 3.55ground_clearance - 3.41AWD -.01
  
  
  # 6)-Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
  summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)) 
  
# Deliverable 2: Create Visualizations for the Trip Analysis
  
  # 2)-In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
  Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
  
  # 3)-Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
  Total_summary <- Suspension_Coil_table  %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
  
  # 4)-Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
  #  Mutate documentation
  library(tidyverse)
  Lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))
  
  