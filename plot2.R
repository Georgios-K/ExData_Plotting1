dataFile <- "./data/household_power_consumption.txt"
## Load Data
data <- read.csv(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings="?" )

## Load Subset
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
rm(data)


## Conversions 
datetime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSet$Global_active_power)

## Plot 2
plot(datetime, globalActivePower, type="l",xlab="", ylab="Global Active Power (kilowatts)", )

## save to file 
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

