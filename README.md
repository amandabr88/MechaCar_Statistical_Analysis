# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The ones that provide a non-random amount of variance to the mpg value are vehicle length and ground clearance of the vehicle


2. Is the slope of the linear model considered to be zero? Why or why not?
The slope is not zero because there are variables that have a linear relationship with the dependent variable.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
This linear model cannot be effectively predict as there are only two variables with linear relationship so it would seem there are more variables that should be considered.

## Summary Statistics on Suspension Coils

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Looking into the summary stats of the suspension coils, the 100 pounds per square inch requirement is met. The variance is at 62.2 and that is below the specification of 100 PSI.

[!total_summary](total_summary_deliv2.PNG)

However, the below image shows that lot 3 nearly doubles that variance required and does not meet the specified criteria at that plant. 

[!lot_summary_deliv2](lot_summary_deliv2.PNG)

## T-Tests on Suspension Coils

### Summary t-test

The t-test summary below displays the t-value, p-value for the lots as a whole. The t-value of -1.89 is a small number which indicates that the lots are similiar in production of coils. A p-value of 6% indicates that the results of consistently meeting the requirement of 1500 PSI is reliable and not by chance.

[!ttest_summary](ttest_summary.PNG)

### t-test Lot 1

The t-test result for Lot 1 indicate that this manufactoring plant has an ideal process. The t-value is zero. The data meets the mean of 1500. The process at this plant is repeatable and accurate.

[!ttest_lot1](ttest_lot1.PNG)

### t-test Lot 2

The t-test result for Lot 2 has a p-value of 60% that means there are other variables that need to be considered. This high p-value means the data and results could be by chance. The mean is a good result and it matches the limit of 1500 exactly but there is uncertainty with a large p-value within the statistics for this Lot.

[!ttest_lot2](ttest_lot2.PNG)

### t-test Lot 3

The t-test for lot 3 results shows an ideal p-value of 4%. The numbers of t-value -2.09 is inside an acceptable level for the t-value. The mean of x is close to 1500 and the confidence level of 95% shows this data to be reliable.

[!ttest_lot3](ttest_lot3.PNG)

## Study Design: MechaCar vs Competition

1. What metric or metrics are you going to test?

I'd like to create a study that shows the performance of a car in comparison of a competitor regarding the fuel performance of the vehicle. 

2. What is the null hypothesis or alternative hypothesis?

Null Hypothesis: The average miles per gallon is better performing than a competitors' vehicles.

Alternative Hypothesis: The average miles per gallonis no different than a competitors' vehicles.

3. What statistical test would you use to test the hypothesis? And why?

The multiple variable linear regression model, also the t-test where the samples can be compared between the MechaCar and the other competitors. 

4. What data is needed to run the statistical test?
A subset of horsepower and engine size from the vehicles MechaCar manufactures and of the other competitors vehicles.