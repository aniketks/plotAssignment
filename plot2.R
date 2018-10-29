##Plot 2
#Read the data in, refer to 'Loading the Data.R' for specifics
dft <- read.csv('/Users/aniketkumar/Downloads/household_power_consumption.csv')

#Create plot
png(filename = 'plot2.png', width = 480, height = 480)

plot(x = dft$dt, y = dft$Global_active_power, 
     ylab = 'Global Active Power (kilowatts)', xlab = '', type = 'l')

dev.off()
