#READING DATA
myData <- read.table("./Project1/household_power_consumption.txt", header=TRUE, sep= ";",  dec=".", na.strings = "?")

#CREATING WORKING DATA FROM 1Feb2007 to 2Feb2007
myWorkData <- myData[myData$Date %in% c("1/2/2007","2/2/2007") ,]

#PLOTTING MY DATA
png("plot1.png", width=480, height=480, bg = "white")
hist( as.numeric(myWorkData$Global_active_power), col="#FF2500", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
