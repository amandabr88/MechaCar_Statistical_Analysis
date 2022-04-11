library(tidyverse)
library(dplyr)

# Deliverable 1

mecha_table <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) #import csv file

head(mecha_table)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table) #perform linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)) #linear regression model stats

#Deliverable 2

suspension_coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F) #import suspension coil csv

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), sd(PSI)) #create summary table

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), sd(PSI)) #create summary table by lot


#Deliverable 3


t.test((suspension_coil$PSI), mu=1500) #ttest for all lots

t.test(subset(suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500) #ttest for lot1
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500) #ttest for lot2
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500) #ttest for lot3
