source("setup.R")

png("plot2.png", width = 480, height = 480, units = "px")
plot(as.POSIXct(paste(df_filtered_table$Date, df_filtered_table$Time)), df_filtered_table$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()