library(dplyr)
library(lubridate)

loaddata <- function() { 
  ## Download the data. 
  datafile <- "household_power_consumption.txt"
  if(!file.exists(datafile)) {
    temp <- tempfile()
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
    con <- unzip(temp, datafile)
    unlink(temp)
  }
  
  ## Read in the relevant data. 
  # Note: much faster to excerpt the rows we need and put in the header manually. 
  header <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  data <- read.table(datafile, sep = ";", nrows = 2880, skip = 66637, col.names = header, na.strings = "?")
  
  ## Convert dates and times. 
  data <- mutate(data, datetime = dmy_hms(paste(Date, Time, " ")))
  data
}