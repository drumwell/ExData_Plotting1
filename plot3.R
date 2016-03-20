source("loaddata.R")
data <- loaddata()

png(file = "plot3.png")

## Draw the plot and write the file
with(data, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(data, points(datetime, Sub_metering_2, type = "l", col = "Red"))
with(data, points(datetime, Sub_metering_3, type = "l", col = "Blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty=c(1,1))

dev.off() 