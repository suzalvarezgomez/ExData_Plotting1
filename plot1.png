# READING AND FILTERING DATA
myData <- read.table("./Project1/household_power_consumption.txt", header=TRUE, sep= ";",  dec=".", na.strings = "?")
myWorkData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

# PREPARING CANVAS AND PLOTTING GRAPH 1 – VAR x1
png("plot1.png", width=480, height=480, bg = "white")
x1 <- myWorkData$Global_active_power
hist( x1, col="#FF2500", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
