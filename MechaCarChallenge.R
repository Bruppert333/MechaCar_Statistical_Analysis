## Deliverable 1

library(dplyr)
mechacar <- read.csv(file="MechaCar_mpg.csv")
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar))

## Deliverable 2

suspension_coil <- read.csv ('Suspension_Coil.csv')

total_summary <- summarize(suspension_coil, Mean=mean(suspension_coil$PSI),
  Median=median(suspension_coil$PSI), Variance=var(suspension_coil$PSI), SD=sd(suspension_coil$PSI))

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

## Deliverable 3

t.test((suspension_coil$PSI),mu = 1500)

t.test(subset(suspension_coil,Manufacturing_Lot == "Lot1")$PSI,mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot2")$PSI,mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot3")$PSI,mu=1500)