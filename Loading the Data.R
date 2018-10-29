library(dplyr)
#Data Cleaning
#Import data
df <- read.csv('/Users/aniketkumar/Downloads/household_power_consumption.txt', header = T, sep = ';')
#Change date and time format
df$dt <- paste(df$Date, df$Time, sep = ".")
df$dt <- strptime(df$dt, "%d/%m/%Y.%H:%M:%S")
df$dt <- as.POSIXct(df$dt)


#Filter for required timeframe
dft <- df %>% filter(dt >= '2007-02-01' & dt < '2007-02-03')

#Add just a date variable
dft$date <- strptime(as.character(dft$Date), "%d/%m/%Y")

#Clean up the dataset to change factors to numbers
dft <- data.frame(dft[,c(10,11)], apply(dft[3:9], 2, function (x) (as.numeric(as.character(x)))))

write.csv(dft, '/Users/aniketkumar/Downloads/household_power_consumption.csv')
