source("setup.R")

png("plot3.png", width = 480, height = 480, units = "px")
plot(as.POSIXct(paste(df_filtered_table$Date, df_filtered_table$Time)), df_filtered_table$Sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = "")
lines(as.POSIXct(paste(df_filtered_table$Date, df_filtered_table$Time)), df_filtered_table$Sub_metering_2, col = "red")
lines(as.POSIXct(paste(df_filtered_table$Date, df_filtered_table$Time)), df_filtered_table$Sub_metering_3, col = "blue")
legend("topright", lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col =c("black", "red", "blue"), bty='y', cex=.75)
dev.off()