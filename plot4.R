# READING AND FILTERING DATA
myData <- read.table("./Project1/household_power_consumption.txt", header=TRUE, sep= ";",  dec=".", na.strings = "?")
myWorkData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]


# PREPARING CANVAS
png("plot4.png", width=480, height = 480, bg = "white")
par(mfrow=c(2,2))
#PLOTTING GRAPH1 x4 vs y4_1
x4<- strptime(paste(myWorkData$Date, myWorkData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
y4_1 <- myWorkData$Global_active_power
plot(x4, y4_1, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#PLOTTING GRAPH2 x4 vs y4_2
y4_2 <- myWorkData$Voltage
plot(x4, y4_2, type="l", xlab="datetime", ylab="Voltage")

#PLOTTING GRAPH3 x4 vs y4_31/ y4_32/ y4_33
y4_31 <- myWorkData$Sub_metering_1
y4_32 <- myWorkData$Sub_metering_2
y4_33 <- myWorkData$Sub_metering_3

plot(x4,y4_31, col = "black", type="l", xlab="", ylab="Energy sub metering")
lines(x4,y4_32, col = "#FF2500", type="l")
lines(x4,y4_33, col = "#0433FF", type="l")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "#FF2500", "#0433FF"))

#PLOTTING GRAPH4 x4 vs y4_4
y4_4 <- myWorkData$Global_reactive_power
plot(x4, y4_4, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
