rm(list=ls())
household_power_consumption <- read.table(
  "D:/Moses/netsync/household_power_consumption.txt",
  header = T, sep = ";",dec = ".",na.strings = "?")

subset1  <- subset(household_power_consumption,Date%in% c("1/2/2007","2/2/2007"),
                   select=c(Date,Time,Global_active_power,Global_reactive_power,
                            Voltage,Global_intensity,Sub_metering_1,Sub_metering_2,Sub_metering_3))


class(subset1$Global_active_power)

(histogram_power <- hist(subset1$Global_active_power, plot = F))

png("Plot 1.png", width = 480, height = 480)
plot(histogram_power, labels = F, col="red",main=("Global Active Power "),xlab = "Global Active Power (kilowatts)")
dev.off()

noquote ("MS-AF")
