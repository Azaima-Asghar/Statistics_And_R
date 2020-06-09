
'Multiple linear regression,model that predicts the mpg ofMechaCar prototypes
using a number of variables within the MechaCar mpg dataset.'

'Read the data from the csv file.'
MechaCar_Data <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F)

'Multiple linear regression model.'
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = MechaCar_Data)

'Obtain statistical metrics using the summary function.'
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = MechaCar_Data))

'Read the Suspension Coil data'
Suspension_Coil_data <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

'Create a summary statistics table for the suspension coil’s pounds-per-inch 
continuous variable.'
summary(Suspension_Coil_data$PSI)

'Variance of suspension coil’s pounds-per-inch continuous variable.'
var(Suspension_Coil_data$PSI)

'Standard deviation suspension coil’s pounds-per-inch continuous variable.'
sd(Suspension_Coil_data$PSI)

'Test for normality of PSI in suspension coil data.'
ggplot(Suspension_Coil_data, aes(x = PSI)) + geom_density()

'Using t-test for each manufacturing lot'

t.test(subset(Suspension_Coil_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

t.test(subset(Suspension_Coil_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

t.test(subset(Suspension_Coil_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
