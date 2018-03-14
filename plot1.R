source("setup.R")

png("plot1.png", width = 480, height = 480, units = "px")
hist(df_filtered_table$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()