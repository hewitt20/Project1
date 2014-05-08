ElecPowerConsumption <- read.csv(file="household_power_consumption.txt", head=TRUE, sep=";",
	colClasses = c("character", "character", "character", "character", "character", "character",
	"character", "character", "character"))

newdata <- ElecPowerConsumption[ which(ElecPowerConsumption$Date=='1/2/2007' 
 	| ElecPowerConsumption$Date=='2/2/2007'), ]

dt1 <- strptime(paste(newdata$Date, newdata$Time), "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))

plot(dt1,as.numeric(newdata$Global_active_power),
	ylab="Global Active Power",
	xlab="",
	pch=20,
	cex=.1,
	cex.lab=.75,
	cex.axis=.75,
	type="l")

plot(dt1,as.numeric(newdata$Voltage),
	ylab="Voltage",
	xlab="datetime",
	pch=20,
	cex=.1,
	cex.lab=.75,
	cex.axis=.75,
	type="l")

plot(dt1,as.numeric(newdata$Sub_metering_1),
	ylab="Energy Sub Metering",
	xlab="",
	pch=20,
	cex=.1,
	cex.lab=.75,
	cex.axis=.75,
	type="l")

points(dt1,as.numeric(newdata$Sub_metering_2), 
	col = "red",
 	pch = 20,
	cex=.1,
	type="l")

points(dt1,as.numeric(newdata$Sub_metering_3), 
	col = "blue",
 	pch = 20,
	cex=.1,
	type="l")

legend("topright", 
	c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
	col=c("black", "blue", "red"),
	lty=c(1,1,1),
	cex=.75, 
	bty="n")

plot(dt1,as.numeric(newdata$Global_reactive_power),
	ylab="Global_reactive_power",
	xlab="datetime",
	pch=20,
	cex=.1,
	cex.lab=.75,
	cex.axis=.75,
	type="l")

dev.copy(png, file="plot4.png",
	height=480,
	width=480,
	unit="px")

dev.off()


