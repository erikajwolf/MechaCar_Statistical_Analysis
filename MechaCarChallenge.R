# Deliverable 1
# 3. Use the library function
library(dplyr)
# 4. Import CSV
MechaCar_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaCar_mpg)
# 5. Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
# 6. Summary()
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

# Deliverable 2
# 2. Import and Read CSV as a table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# 3. Create total_summary df
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
# 4. Create lot_summary df
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3
# 1. PSI across all manufacturing lots t-test
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))
# 2. PSI for each llot is statistically different
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot=="Lot1"), mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot=="Lot2"), mu=mean(Suspension_Coil$PSI))
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot=="Lot3"), mu=mean(Suspension_Coil$PSI))
