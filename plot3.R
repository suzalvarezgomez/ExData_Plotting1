# READING AND FILTERING DATA
myData <- read.table("./Project1/household_power_consumption.txt", header=TRUE, sep= ";",  dec=".", na.strings = "?")
myWorkData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

# PREPARING CANVAS AND PLOTTING GRAPH 3 x3 vs y3_1/y3_2/y3_3 
png("plot3.png", width=480, height = 480, bg = "white")

x3<- strptime(paste(myWorkData$Date, myWorkData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
y3_1 <- myWorkData$Sub_metering_1
y3_2 <- myWorkData$Sub_metering_2
y3_3 <- myWorkData$Sub_metering_3

plot(x3,y3_1, col = "black", type="l", xlab="", ylab="Energy sub metering")
lines(x3,y3_2, col = "#FF2500", type="l")
lines(x3,y3_3, col = "#0433FF", type="l")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "#FF2500", "#0433FF"))
dev.off()
