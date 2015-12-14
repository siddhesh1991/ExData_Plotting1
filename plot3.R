## Getdataset
data_eda <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", stringsAsFactors=F)
data_eda$Date <- as.Date(data_eda$Date, format="%d/%m/%Y")

#Subset Data
data_eda <- subset(data_eda, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

datetime <- paste(as.Date(data$Date), data$Time)
data_eda$Datetime <- as.POSIXct(datetime)

## Plot 3
plot(data_eda$Datetime,as.numeric(data_eda$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(data_eda$Datetime,as.numeric(data_eda$Sub_metering_2), type="l", col="red")
lines(data_eda$Datetime,as.numeric(data_eda$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))


## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
