## Getdataset
data_eda <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", stringsAsFactors=F)
data_eda$Date <- as.Date(data_eda$Date, format="%d/%m/%Y")

#Subset Data
data_eda <- subset(data_eda, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Plot 1
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
