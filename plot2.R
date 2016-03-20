source("loaddata.R")
data <- loaddata()

png(file = "plot2.png")

## Draw the plot and write the file
with(data, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off() 