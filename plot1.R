ElecPowerConsumption <- read.csv(file="household_power_consumption.txt", head=TRUE, sep=";",
	colClasses = c("character", "character", "character", "character", "character", "character",
	"character", "character", "character"))

newdata <- ElecPowerConsumption[ which(ElecPowerConsumption$Date=='1/2/2007' 
 	| ElecPowerConsumption$Date=='2/2/2007'), ]

hist(as.numeric(newdata$Global_active_power), 
	xlab="Global Active Power (Kilowatts)", 
	col="Red",
	cex.lab=.75,
	cex.axis=.75,
	cex.main=.95,
	main="Global Active Power")

dev.copy(png, file="plot1.png",
	height=480,
	width=480,
	unit="px")

dev.off()
