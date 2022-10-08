# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

    Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
        In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.
    Is the slope of the linear model considered to be zero? Why or why not?
        The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-             3.411(AWD), which results in a non-zero slope.
    Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
        R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset. However, r-squared is not the only consideration for effectiveness. There may be other variables not included in the dataset contributing to the variation in the mpg.
 
## Summary Statistics on Suspension Coils
    The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
            The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have significantly lower variance, 1 and 7 respectively.

## T-Tests on Suspension Coils
    briefly summarize your interpretation and findings for the t-test results
        T-test for all Lots
            All Manufacturing Lots: p-value = .6028, alpha = .05
            .60 > .05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be                      assumed. The mean falls within the 95% confidence interval.
        T-test for Lot 1
            Lot 1: p-value = 1, alpha = .05
            1 > .05, which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within             the 95% confidence interval.
        T-test for Lot 2
            Lot 2: p-value = .6072, alpha = .05
            .60 > .05, which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed. The mean falls                   within the 95% confidence interval.
        T-test for Lot 3
            Lot 3: p-value = .04168, alpha = .05
            .04 < .05, which means it is statistically significant from the normal distribution and normality cannot be assumed. However, the mean falls             within the 95% confidence interval.
The overall manufacturing, Lot 1, and Lot 2 show a normal distribution. Therefore, there is not sufficient evidence to reject the null hypothesis, which shows the two means are statistically similar.

## Study Design: MechaCar vs Competition
    Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
    - In your description, address the following questions:
    - What metric or metrics are you going to test?
    - What is the null hypothesis or alternative hypothesis?
    - What statistical test would you use to test the hypothesis? And why?
    - What data is needed to run the statistical test?
