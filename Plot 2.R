rm(list=ls())
household_power_consumption <- read.table(
  "D:/Moses/netsync/household_power_consumption.txt",
  header = T, sep = ";",dec = ".",na.strings = "?")

subset1  <- subset(household_power_consumption,Date%in% c("1/2/2007","2/2/2007"),
                   select=c(Date,Time,Global_active_power,Global_reactive_power,
                            Voltage,Global_intensity,Sub_metering_1,Sub_metering_2,Sub_metering_3))


class(subset1$Global_active_power)

xlbPlot2 <- rep(c("Thu","Fri","Sat"),960)
plot(xlbPlot2)

(histogram_power <- hist(subset1$Global_active_power, plot = F))

png("Plot 2.png", width = 480, height = 480)
plot(xlbPlot2,subset1$Global_active_power,type="l", col="red",main=(" "),ylab = "Global Active Power (kilowatts)")
dev.off()

length(subset1$Global_active_power)

noquote ("MS-AF")




class(subset1$Date)
class(subset1$Time)

Date <- as.character(subset1$Date)
Date
strptime(Date, "%d/%m/%y")
Time <- as.character(subset1$Time)
Time

x <- paste(Date,Time)

strptime(x, "%d/%m/%y %H:%M:%S")





dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
strptime(x, "%m/%d/%y %H:%M:%S")

strptime(x, "%m/%d/%y %H:%M:%S"



subset1$Date
date <- as.Date(subset1$Date,"%d/%m/%y")
date

z <- paste(subset1$Date,subset1$Time)

z
t <- as.Date(z,"%d/%m/%y" "%H:%M:%S")
class(t)



t

dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")

strptime(x, "%m/%d/%y %H:%M:%S")


class(z)
z



x <- c("1jan1960", "2jan1960", "31mar1960", "30jul1960")
z <- strptime(x, "%d%b%Y %S")
z


(x <- strptime(c("2006-01-08 10:07:52", "2006-08-07 19:33:02"),
               "%Y-%m-%d %H:%M:%S", tz = "EST5EDT"))
x

class(x)
## An RFC 822 header (Eastern Canada, during DST)
strptime("Tue, 23 Mar 2010 14:36:38 -0400",  "%a, %d %b %Y %H:%M:%S %z")


?as.Date()



dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
class(dates)
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")

