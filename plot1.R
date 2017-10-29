##Plot1
path<-"Houshold Project"

activities <- read.table(file.path(path, "household_power_consumption.txt"))
power<- read.table(file.path(path, "household_power_consumption.txt"))
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1",
"Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

##To convert Fcator to numeric u have to convert it first to character
##Open the png device
png("plot11.png", width=480, height=480)
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
