library(dplyr)
mechacar <- read.csv(file="MechaCar_mpg.csv")
reg <- lm(vehicle_length~vehicle_weight~spoiler_angle~ground_clearance~AWD~mpg, data=mechacar)
summary(reg)
