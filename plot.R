library(dplyr)
library(lubridate)

source("loaddata.R")
data <- loaddata()

## Draw the plot.

# plot 1
#with(data, hist(Global_active_power, col = "Red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"))

# plot 2
#with(data, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# plot 3
# with(data, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
# with(data, points(datetime, Sub_metering_2, type = "l", col = "Red"))
# with(data, points(datetime, Sub_metering_3, type = "l", col = "Blue"))
# legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty=c(1,1))

# plot 4
par(mfrow = c(2, 2))

# 1 
with(data, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# 2
with(data, plot(datetime, Voltage, type = "l"))

# 3
with(data, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(data, points(datetime, Sub_metering_2, type = "l", col = "Red"))
with(data, points(datetime, Sub_metering_3, type = "l", col = "Blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty=c(1,1))

# 4
with(data, plot(datetime, Global_reactive_power, type = "l"))
