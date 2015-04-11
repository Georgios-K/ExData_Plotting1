dataFile <- "./data/household_power_consumption.txt"
## Load Data
data <- read.csv(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings="?" )

## Load Subset
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
rm(data)

## Plot 1
hist(subSet$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Save to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()