library(dplyr)
mechacar <- read.csv(file="MechaCar_mpg.csv")
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)
summary(reg)
