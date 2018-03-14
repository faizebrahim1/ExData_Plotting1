source("setup.R")

png("plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))
attach(df_filtered_table)
plot(as.POSIXct(paste(Date, Time)), Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

plot(as.POSIXct(paste(Date, Time)), Voltage, type = "l", ylab = "Voltage", xlab = "")

plot(as.POSIXct(paste(Date, Time)), Sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = "")
lines(as.POSIXct(paste(Date, Time)), Sub_metering_2, col = "red")
lines(as.POSIXct(paste(Date, Time)), Sub_metering_3, col = "blue")
legend("topright", lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col =c("black", "red", "blue"), bty='n', cex=.75)

plot(as.POSIXct(paste(Date, Time)), Global_reactive_power, type = "l", xlab = "")
detach(df_filtered_table)
dev.off()
