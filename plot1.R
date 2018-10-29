##Plot 1
#Read the data in, refer to 'Loading the Data.R' for specifics
dft <- read.csv('/Users/aniketkumar/Downloads/household_power_consumption.csv')

#Create plot
png(filename = 'plot1.png', width = 480, height = 480)

with(dft, hist(Global_active_power, col = 'red',
               xlab = 'Global Actie Power (kilowatts)',
               main = 'Global Active Power'))



dev.off()
