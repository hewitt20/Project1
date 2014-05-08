ElecPowerConsumption <- read.csv(file="household_power_consumption.txt", head=TRUE, sep=";",
	colClasses = c("character", "character", "character", "character", "character", "character",
	"character", "character", "character"))

newdata <- ElecPowerConsumption[ which(ElecPowerConsumption$Date=='1/2/2007' 
 	| ElecPowerConsumption$Date=='2/2/2007'), ]

dt1 <- strptime(paste(newdata$Date, newdata$Time), "%d/%m/%Y %H:%M:%S")

plot(dt1,newdata$Global_active_power,
	ylab="Global Active Power (Kilowatts)",
	xlab="",
	pch=20,
	cex=.1,
	cex.lab=.75,
	cex.axis=.75,
	type="l")

dev.copy(png, file="plot2.png",
	height=480,
	width=480,
	unit="px")

dev.off()


