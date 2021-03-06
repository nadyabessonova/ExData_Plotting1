x <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
y <- subset(x, Date == "1/2/2007" | Date == "2/2/2007")
y$Date <- strptime(paste(y$Date,y$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
plot(y$Date, y$Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatts)", pch=46, type = "l")
dev.off()