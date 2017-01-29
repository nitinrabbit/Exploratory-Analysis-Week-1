
datafile <- 'dataset.txt'
data <- read.table(datafile, header = TRUE, sep = ';', stringsAsFactors = FALSE, dec = '.')
subset_data <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
subset_data[c(1,2, nrow(subset_data)-1, nrow(subset_data)),]

datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(subset_data$Sub_metering_1)
subMetering2 <- as.numeric(subset_data$Sub_metering_2)
subMetering3 <- as.numeric(subset_data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


