##Plot 3
#Read the data in, refer to 'Loading the Data.R' for specifics
dft <- read.csv('/Users/aniketkumar/Downloads/household_power_consumption.csv')

#Create plot
png(filename = 'plot3.png', width = 480, height = 480)

with(dft, plot(x = dt, y = Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering'))  
with(dft, lines(dt, Sub_metering_2, col = 'red'))
with(dft, lines(dt, Sub_metering_3, col = 'blue'))  
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'), lty=1, cex=0.8, box.col = 'black')

dev.off()
