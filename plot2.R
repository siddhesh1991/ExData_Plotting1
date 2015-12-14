## Getdataset
data_eda <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", stringsAsFactors=F)
data_eda$Date <- as.Date(data_eda$Date, format="%d/%m/%Y")

#Subset Data
data_eda <- subset(data_eda, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

datetime <- paste(as.Date(data$Date), data$Time)
data_eda$Datetime <- as.POSIXct(datetime)

## Plot 2
plot(data$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

## Saving to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
