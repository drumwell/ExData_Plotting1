source("loaddata.R")
data <- loaddata()

png(file = "plot1.png")

## Draw the plot and write the file
with(data, hist(Global_active_power, col = "Red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"))
dev.off() 