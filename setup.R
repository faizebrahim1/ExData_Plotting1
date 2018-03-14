if (exists("df_filtered_table") == FALSE) {
  unzipped <- unz("exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.txt")
  df_table <- read.table(unzipped, header = T, sep = ";")
  df_table$Date <- as.Date(df_table$Date, "%d/%m/%Y")
  
  df_filtered_table <- df_table[df_table$Date >= "2007-02-01" & df_table$Date <= "2007-02-02", ]
  
  df_filtered_table$Global_active_power <- as.numeric(as.character(df_filtered_table$Global_active_power))
  df_filtered_table$Sub_metering_1 <- as.numeric(as.character(df_filtered_table$Sub_metering_1))
  df_filtered_table$Sub_metering_2 <- as.numeric(as.character(df_filtered_table$Sub_metering_2))
  df_filtered_table$Global_reactive_power <- as.numeric(as.character(df_filtered_table$Global_reactive_power))
  df_filtered_table$Voltage <- as.numeric(as.character(df_filtered_table$Voltage))
}
