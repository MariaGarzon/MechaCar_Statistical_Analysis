mpg <- read.csv('/Users/Maria/Desktop/MechaCar_Statistical_Analysis/Data/MechaCar_mpg.csv',stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg))

