dataFile <- "./data/household_power_consumption.txt"
## Load Data
data <- read.csv(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings="?" )

## Load Subset
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
rm(data)

## Conversions 
datetime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

## Plot 3
png("plot3.png", width=480, height=480)
plot(datetime, subSet$Sub_metering_1, type="l",  xlab="", ylab="Energy Submetering")
lines(datetime, subSet$Sub_metering_2, type="l", col="red")
lines(datetime, subSet$Sub_metering_3, type="l", col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2)

dev.off()
