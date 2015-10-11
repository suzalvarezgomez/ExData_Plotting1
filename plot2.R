# READING AND FILTERING DATA
myData <- read.table("./Project1/household_power_consumption.txt", header=TRUE, sep= ";",  dec=".", na.strings = "?")
myWorkData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

# PREPARING CANVAS AND PLOTTING GRAPH 2 – VAR x2  vs y2
png("plot2.png", width=480, height=480, bg = "white")
x2<- strptime(paste(myWorkData$Date, myWorkData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
y2 <- myWorkData$Global_active_power
plot(x2,y2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
