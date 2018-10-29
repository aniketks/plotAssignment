#Plot 3
#Read the data in, refer to 'Loading the Data.R' for specifics
dft <- read.csv('/Users/aniketkumar/Downloads/household_power_consumption.csv')

#Create plot
library(lubridate)
library(ggplot2)
library(reshape2)

par(mfrow = c(2,2), mar = c(4,4,4,4))

plot(x = dft$dt, y = dft$Global_active_power, 
     ylab = 'Global Active Power', xlab = '', type = 'l')

plot(x = dft$dt, y = dft$Voltage, ylab = 'Voltage',
     xlab = 'datetime', type = 'l')

with(dft, plot(x = dt, y = Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering'))
lines(dft$dt, dft$Sub_metering_2, col = 'red')
lines(dft$dt, dft$Sub_metering_3, col = 'blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
         col = c('black', 'red', 'blue'), lty=1, cex=0.6, bty = 'n')

plot(x = dft$dt, y = dft$Global_reactive_power, ylab = 'Global_reactive_power',
     xlab = 'datetime', type = 'l')

png(filename = 'plot4.png', width = 480, height = 480)
